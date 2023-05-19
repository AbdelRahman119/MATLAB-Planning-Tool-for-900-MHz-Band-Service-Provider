clear;
close all;
clc;
SIRmin_dB=19;
GOS=1:30;
User_density=1400;
City_Area=100;
sectorization_angle=[60 120 360];
Number_of_Cells=zeros(3,30);
traffic_per_cell=zeros(3,30);
 for i=1:3
  for j=1:length(GOS)
  [N,no_of_cells,cell_radius,A_of_cell,A_of_sector,p_tx_dBm]=part_A(GOS(j),City_Area,User_density,SIRmin_dB,sectorization_angle(i));
  Number_of_Cells(i,j)=no_of_cells;
  traffic_per_cell(i,j)= A_of_cell; 
  end
 end
 
 figure();
 plot(GOS,Number_of_Cells(1,1:30),GOS,Number_of_Cells(2,1:30),GOS,Number_of_Cells(3,1:30))
 grid on
 xlabel('GOS');
 ylabel('Number of cells');
 title('Number of cells vs GOS (SIRminDB=19)');
 legend('60 sectorization','120 sectorization','Omni-directional');
 
 figure()
 plot(GOS,traffic_per_cell(1,1:30),GOS,traffic_per_cell(2,1:30),GOS,traffic_per_cell(3,1:30))
 grid on
 xlabel('GOS');
 ylabel('traffic per cell');
 title('Traffic_intensity vs GOS (SIRminDB=19)');
 legend('60 sectorization','120 sectorization','Omni-directional');
