function [ output_args ] = plot_psr( PSR_NAME )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
pulsar = find_psr(PSR_NAME);
%% some test case pulsars
%% B1937+21



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CHOOSING W10 OR W50 VALUES FOR PULSE WIDTH, CAN BE MOVED TO SEP FUNCT %%
%% CATCHES BAD VALUES, RETURNS PULSE_WIDTH %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('W10 value: %f (ms) \nW50 value: %f (ms) \n', pulsar.W10, pulsar.W50)

if isnan(pulsar.W10) && ~isnan(pulsar.W50)
        fprintf('No value for W10. ')
        pulse_width_choice = 50;
end

if ~isnan(pulsar.W10) && isnan(pulsar.W50)
        fprintf('No value for W50. ')
        pulse_width_choice = 10;
end

if isnan(pulsar.W10) && isnan(pulsar.W50)
        error('No values for pulsar width available in catalog, cannot model signal. Try another pulsar or update values.')
end
        
if ~isnan(pulsar.W10) && ~isnan(pulsar.W50)
    pulse_width_choice = str2double(input('Enter 10 or 50 to choose how to model pulse width (W10/W50): ', 's'));
    if isnan(pulse_width_choice) || fix(pulse_width_choice) ~= pulse_width_choice
      error('Must enter an integer, 10 or 50.')
    end
    if pulse_width_choice~=10 && pulse_width_choice~=50
        error('Must enter an integer, 10 or 50.')
    end
end

if pulse_width_choice == 10
    fprintf('Using W%i value: %f(s)\n', pulse_width_choice, pulsar.W10/1000)
    PULSE_WIDTH = pulsar.W10/1000; %%converted to seconds
end
if pulse_width_choice == 50
    fprintf('Using W%i value: %f(s)\n', pulse_width_choice, pulsar.W50/1000)
    PULSE_WIDTH = pulsar.W50/1000; %%converted to seconds
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% frequency / period of pulses %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% returns PULSE_PERIOD, PULSE_FREQ %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('Barycentric period: %f (s) \nBarycentric rotation frequency: %f (Hz) \n', pulsar.P0, pulsar.F0)
check = input('Use given period values (Y/N): ', 's');
if check=='n' || check=='N'
    check = input('Fix values (Y/N), N to exit: ', 's');
    if check~='y' && check~='Y'
        error('Bad values for period, unresolved.')
    end
    PULSE_PERIOD = str2double(input('Enter fixed pulsar period in seconds (frequency will be derived): ', 's'));
    PULSE_FREQ = 1/PULSE_PERIOD;
    check = 'Y';
end
if check~='Y' && check~='y'
    error('Bad value for period check.')
end


PULSE_PERIOD = pulsar.P0; %% seconds
PULSE_FREQ = pulsar.F0; %% Hz

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% EXPECTED PULSE MAGNITUDE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% RETURNS PULSE_MAG %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%fprintf('Distance: %f (kpc) \n', pulsar.Dist)
fprintf('Radio luminosity-- \n At 400MHz: %f (mJy jpc^2)', pulsar.R_Lum)
fprintf('\n At 1400MHz: %f (mJy jpc^2)', pulsar.R_Lum14)
fprintf('\nMean flux density-- (Radio Luminosity / distance^2) \n At 400MHz: %f (mJy)', pulsar.S400)
fprintf('\n At 1400MHz: %f (mJy)', pulsar.S1400)
fprintf(' \n At 2000MHz: %f (mJy)\n', pulsar.S2000)
pulse_mag_check = input('Use an above value? (Y/N) ', 's');
if pulse_mag_check=='n' || pulse_mag_check=='N'
    pulse_mag_check2 = input('Fix values (Y/N), N to exit: ', 's');
    if pulse_mag_check2~='y' && pulse_mag_check2~='Y'
        error('Bad values for magnitude, unresolved.')
    end
    disp('Mean flux density is equivalent to the radio luminosty divided by distance squared. If distance is in catalog it is displayed below.')
    fprintf('Distance: %f (kpc)\n', pulsar.Dist)
    PULSE_MAG = str2double(input('Enter mean flux density at desired sampling rate in mJy: ', 's'));
end
if pulse_mag_check=='Y' || pulse_mag_check=='y'
    pulse_mag_choose = str2double(input('Input 400, 1400, or 2000 to choose sampling rate for mean flux density: ', 's'));
    if pulse_mag_choose == 400
        PULSE_MAG = pulsar.S400;
    end
    if pulse_mag_choose == 1400
        PULSE_MAG = pulsar.S1400;
    end
    if pulse_mag_choose == 2000
        PULSE_MAG = pulsar.S2000;
    end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SAMPLING RATE, LENGTH OF TIME TO PLOT %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% RETURNS PULSE_SR, SIGNAL_TIME %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PULSE_SR = str2double(input('Please enter sampling rate as integer (eg. 400, 1400, 1600) in MHZ: ', 's'));
SIGNAL_TIME = str2double(input('Please enter length of time to plot (eg. 0.25, .5, 1) in seconds: ', 's'));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PLOT SIGNAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = {}; 
valuesXY = [1, 0];                
increment = 1/PULSE_SR;
time = SIGNAL_TIME;
j = 0;      %initialize variable f(x)
k = 0;
t = 1;
r=1;
fid = fopen('signalplot.txt','w');     %open an output file
pcnT = a.';
%headers for columns of output file-- FORMAT BEST IN NOTEPAD++
fprintf(fid, ' x            f(x)');
while t<=time+1
    for i=1:increment:PULSE_PERIOD+1 -(PULSE_WIDTH/2)      
        a{r, 1} = k;        %first column of cell array is just x
        a{r, 2} = 0;
        valuesXY(r,1) = k;  %first column of equivalent XY matrix
        fprintf(fid,'\n%s  %s \n', k, 0);
        k = k+ increment;
        r = r+ 1;
        t = t + increment;
    end
    for i=1:increment:PULSE_WIDTH+1
        a{r, 1} = k;        %first column of cell array is just x
        j = PULSE_MAG;
        a{r, 2} = j;
        valuesXY(r,1) = k;  %first column of equivalent XY matrix
        valuesXY(r,2) = j;
        fprintf(fid,'%s  %s \n', k, j); 
        k = k+ increment;
        r = r+1;
        t = t + increment;
    end
end

x=valuesXY(:,1);    %assign 1st column of XY values to x
y=valuesXY(:,2);    %assign 2nd column of XY values to y
plot(x,y)           %plot 'em


fclose(fid);        %close output text file

end

