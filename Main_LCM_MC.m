% This is a monte carlo simulations which, in every iterations, generates 
% 3 to 8 random pulsar waves and finds their common wavelength.
clear; clc; close all;

% Collaborators: Steve Stevenson, John Johnson, and Michael Michaelson


p2k = 3.086e13; % kilometers per parsec [km/pc]
c = 299792.458; % speed of light [km/s]
nmc = 10000; % number of monte carlo runs
x = zeros(nmc,1);
y = x;
z = x;


for i = 1:nmc
    N = 4; % number of waves
    p = (rand(N,1) - 0.5)*0.02 + 25e-3;  % Period [s]
    L = c.*p;
    waves = rv(N);

    Lx = uint64(round(abs(L.*waves(1,:)')));
    Ly = uint64(round(abs(L.*waves(2,:)')));
    Lz = uint64(round(abs(L.*waves(3,:)')));

    Lxc = CommonWavelength(Lx);
    Lyc = CommonWavelength(Ly);
    Lzc = CommonWavelength(Lz);

    


    Lxcp = double(Lxc)/p2k; % X LCM Wavelength in Parsecs
    Lycp = double(Lyc)/p2k; % Y LCM Wavelength in Parsecs
    Lzcp = double(Lzc)/p2k; % Z LCM Wavelength in Parsecs
    
    if Lxcp < 0.1 || Lycp < 0.1 || Lzcp < 0.1
%         Lxc
%         Lyc
%         Lzc
    end
    x(i) = Lxcp;
    y(i) = Lycp;
    z(i) = Lzcp;
end

%% Plotting
close all;

% km LCM histogram
dkm = [x;y;z]*p2k;
maxIntCount = sum(isnan(dkm));
percentOutsideSolarSystem = (sum(dkm > 1.2e10) + maxIntCount)/length(dkm)*100
nbins = ceil(1 + log(length(dkm)))*3; % modified sturges rule
histogram(log10(dkm), nbins), xlabel 'LCM Wavelength [log10(km)]', ylabel Count; grid on;
title([num2str(N) ' Pulsars, LCM Wavelength Histogram: ', num2str(3*nmc), ' MC Runs'])


figure()
subplot 221
nbins = ceil(1 + log(length([x;y;z])))*3;
histogram(log10([x;y;z]),nbins), xlabel 'LCM Wavelength [log10(pc)]', ylabel Count; grid on;
title([num2str(N) ' Pulsars, LCM Wavelength Histogram: ', num2str(3*nmc), ' MC Runs'])

% figure() % volume plot
subplot 222
V = x.*y.*z;
nbins = ceil(1 + log(length(V)))*3;
histogram(log10(V),nbins), xlabel 'Reference Volume [pc^3]', ylabel Count; grid on;
title([num2str(N) ' Pulsars, Reference Volume Histogram: ', num2str(nmc), ' MC Runs'])

% surface area to volume plot
% figure()
subplot 223
SA = x.*y*2 + x.*z*2 + y.*z*2;
SAV = SA./V;
nbins = ceil(1 + log(length(SAV)))*3;
histogram(log10(SAV),nbins), xlabel 'Surface Area to Volume Ratio [1/pc]', ylabel Count; grid on;
title([num2str(N) ' Pulsars, Surface Area to Volume Ratio Histogram: ', num2str(nmc), ' MC Runs'])

% assume cube with side length equal 
% figure()
subplot 224
a = V.^(1/3);
SAVCube = 6./a;
SAVR2C = SAV./SAVCube;
nbins = ceil(1 + log(length(SAVR2C)))*3;
histogram(log10(SAVR2C),nbins), xlabel 'log10(SAV/SAVCube)', ylabel Count; grid on;
title([num2str(N) ' Pulsars, SAVR to CUBE SAVR Ratio Histogram: ', num2str(nmc), ' MC Runs'])

% pc LCM histogram
figure()
nbins = ceil(1 + log(length(x)))*3;  % modified sturges rule
histogram(log10(sqrt(x.^2 + y.^2 + z.^2)), nbins), xlabel 'Least Square LCM Wavelength [log10(pc)]', ylabel Count; grid on;
title([num2str(N) ' Pulsars, LCM Wavelength Histogram: ', num2str(nmc), ' MC Runs'])





