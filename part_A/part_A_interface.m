clear;clc;
GOS=input('Enter the GOS (in percentage) ');
City_Area=input('Enter the city area (in km2) ');
User_density=input('Enter the user density ');
SIRmin_dB=input('Enter SIRmin in dB ');
sectorization_angle=input('Enter the sectorization angle(360 or 120 or 60) ');
[N,no_of_cells,cell_radius,A_of_cell,A_of_sector,p_tx_dBm] = part_A(GOS,City_Area,User_density,SIRmin_dB,sectorization_angle);
fprintf('cluster size is %d, number of cells is %d and cell radius is %.2f km \n',N,no_of_cells,cell_radius);
fprintf('trafic intensity of a cell is %0.2f and trafic intensity of a sector is %.2f \n',A_of_cell,A_of_sector);
fprintf('The required Base station transmitted power is %.2f dbm \n' ,p_tx_dBm);
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
