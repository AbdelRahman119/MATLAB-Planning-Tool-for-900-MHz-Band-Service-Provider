function N = get_cluster_size(SIRmin_dB,sectorization_angle)
  SIRmin = 10.^(SIRmin_dB/10);
  if sectorization_angle==360
    N=((SIRmin*6)^(1/2))/3;
  elseif sectorization_angle==120
    N=((SIRmin*2)^(1/2))/3;
  elseif sectorization_angle==60
    N=((SIRmin*1)^(1/2))/3;
  end
 for i=0:10
    for k=1:10
      C_size(i+1,k)=i.^2+k.^2+i.*k;
      
    end     
 end
 Cluster_size=unique(C_size);
 for j=1:length(Cluster_size)
     if N>Cluster_size(j)
         continue;
     elseis N<Cluster_size(j) 
         N=Cluster_size(j);
         break;
     end
 end
end
