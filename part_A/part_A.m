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

end
