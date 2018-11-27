clear; clc; close all; 

load('millisecond_pulsar_database.mat');
Qx = @(Pf,Fx,W,P) (Fx.*Pf.^2)./ (W.^2.*(Pf + (W./P).*(1-Pf)));

n = input('How many pulsars do we see? ');
for i = 1:n
x = input('Enter Pulsar name: ');

try                     %test if psr exists in catalog. if not, then code stops bc of an error. we don't want that
     a = find_psr(x); 
     P(i) = a.P0;
catch                   %instead of exiting code, a second option is implemented.
    P(i) = input('Pulsar not found in catalog. Please enter Pulsar Period (s): ');
end

Pulsar_Name(i) = {x}; %stores names of psr's in cells

Pf(i) = input('Enter Pulsed Fraction (0.0-1.0) : '); 
Fx(i) = input('Enter Photon Flux (erg/cm^2/s) : ');  
W(i) = input('Enter Pulse Width (s): ');             

fom(i) = Qx(Pf(i),Fx(i),W(i),P(i));
end
Pulsar_Name = Pulsar_Name'; fom = fom'; 

fom_table = table(Pulsar_Name,fom);
fom_sort = sortrows(fom_table,2,'descend') %sort rows wrt 2nd column(fom)
