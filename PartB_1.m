 clear;
 close all;
 clc;
 SIRminDB=1:30;
 sectorization_angle=[60 120 360];
 c_size=zeros(3,30);
 for i=1:3
  for j=1:length(SIRminDB)
  N=get_cluster_size(SIRminDB(j),sectorization_angle(i));
  c_size(i,j)=N;
  end
 subplot(1,3,i)
 stem(SIRminDB,c_size(i,1:30))
 grid on
 xlabel('SIR (dB)');
 ylabel('ClusterSize');
 title(['sectorization angle is ',num2str(sectorization_angle(i))]);
 ylim([1 30]);
 end
