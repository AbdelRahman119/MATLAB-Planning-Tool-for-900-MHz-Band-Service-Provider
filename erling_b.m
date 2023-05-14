clear;clc;
##sectorization =360;
##no_of_sectors = 360/sectorization;
##c = ceil(340/(N*no_of_sectors));
A_of_sector = find_A(1,1) %%getting the total trafic in sector or cell
##no_of_users_in_sector = floor(A_of_sector/0.025);
##cell_area = total_users/(no_of_users_in_sector*no_of_sectors);
##cell_radius = sqrt( 2*cell_area / ( 3*sqrt(3) ));
##A_of_cell = A_of_sector*no_of_sectors;