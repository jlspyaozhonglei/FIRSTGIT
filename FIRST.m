clear all;

close all;

clc




bufa= (1:256);
bufb= (1:256);
bufc= (1:256);
bufd= (1:256);




filename = 'C:\yao_work\IF02P\CAMTST\FLT_RGB_15.pcap';







fid = fopen(filename,'r');



tmpPack = fread(fid,40+42+1048);



angbuf=0;

while(1)

tmpPack = fread(fid,16+42+1048);
  

a=tmpPack(59);
a


    for(i=1:1:256)
        
      bufa(i) =  tmpPack(55 + (4*i));
      bufb(i) =  tmpPack(56 + (4*i));  
      bufc(i) =  tmpPack(57 + (4*i));     
      bufd(i) =  tmpPack(58 + (4*i));      
    
    end   
    
  plot(bufa,'r');  
  hold on;
  plot(bufb,'g');    
  hold on;
  plot(bufc,'b'); 
    hold on;
  plot(bufd,'m'); 
   legend('RED','GRE','BLU','NIR') 

  a = 5;
  
end

















