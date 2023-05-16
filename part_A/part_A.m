function [N,no_of_cells,cell_radius,A_of_cell,A_of_sector]= part_A(GOS,City_area,User_density,SIRmin_dB,sectorization_angle);
  %%getting cluster size from SIR
  total_users = User_density*City_area;
  no_of_sectors = 360/sectorization_angle;
  N = get_cluster_size(SIRmin_dB,sectorization_angle);
  
  %%getting cell area by computing the no. of users in each cell
  
  c = ceil(340/(N*no_of_sectors));
  A_of_sector = find_A(GOS,c); %%getting the total trafic in sector or cell 
  no_of_users_in_sector = floor(A_of_sector/0.025);
  no_of_cells = ceil(total_users/(no_of_users_in_sector*no_of_sectors));
  cell_area = City_area/no_of_cells;
  cell_radius = sqrt( 2*cell_area / ( 3*sqrt(3) ));
  A_of_cell = A_of_sector*no_of_sectors;
  
  %getting p_tx minimum by using link budget and getting the minimum reqired power at the cell radius
  Path_Loss = losses(cell_radius);
  p_tx_dBm =-95+Path_Loss ;
  
  %plotting prx in dBm vs distance in km.
  d = [1:1:100];
  p_rx = p_tx_dBm - losses(d);
  
  %drawing in normal scale 
  subplot(2,1,1)
  plot(d,p_rx)
  grid on;
  xlim([1 100]);
  xlabel('Distance from reciever in km');
  ylabel('MS recieved power in dBm');

  %drawing in log scale 
  subplot(2,1,2)
  semilogx(d,p_rx)
  grid on;
  xlim([1 100]);
  xlabel('Distance from reciever in km (log scale)');
  ylabel('MS recieved power in dBm');

end

function Path_Loss = losses(d)
%using Hata Model
  CH = 0.8+(1.1*log10(900*(10^6))-0.7)*(1.5)-1.56*log10(900*(10^6));
  Path_Loss = 69.55 + 26.16*log10(900*(10^6)) - 13.82*log10(20)- CH + log10(d)*(44.9-6.55*log10(20));

end
