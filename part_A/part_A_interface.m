clear;clc;
GOS=input('Enter the GOS (in percentage) ');
City_Area=input('Enter the city area (in km2) ');
User_density=input('Enter the user density ');
SIRmin_dB=input('Enter SIRmin in dB ');
sectorization_angle=input('Enter the sectorization angle(360 or 120 or 60) ');
[N,no_of_cells,cell_radius,A_of_cell,A_of_sector] = part_A(GOS,City_Area,User_density,SIRmin_dB,sectorization_angle);
fprintf('cluster size is %d, number of cells is %d and cell radius is %.2f km \n',N,no_of_cells,cell_radius);
fprintf('trafic intensity of a cell is %0.2f and trafic intensity of a sector is %.2f \n',A_of_cell,A_of_sector);