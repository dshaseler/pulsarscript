clear; clc; close all;

%{
Simulates the NHPP of photons from an X-Ray pulsar arriving at a detector.

Assume no doppler shift, and constant pulsar frequency. Arrival rate and
timestep are chosen as to reduce the chance of more than one photon
arriving during each timestep. This stems from the conditions given for an 
NHPP according to Emadzadeh who references the following:
[19] S. M. Ross, Introduction to Probability Models, 6th ed. New York:
Academic, 1996.
The chances of two photons arriving during a timestep are low, however they
are still non-zero. It's not clear if this is acceptable, or if stricter
conditions need to be enforced.


%}

% Initialize sim
t0 = 0; % initial time                                  [s]
t1 = 2; % final time                                    [s]
dt = 1e-5; % timestep                                   [s]
t = (t0:dt:t1); % time vector                           [s]
f = 2; % frequency                                      [Hz]
nT = length(t) % number of time intervals
lams = 15*dt; % source arrival rate for timestep        [ph]
lamb = 5*dt; % background arrival rate for timestep     [ph]

% Generate the pulse profile
phase = t*f; % phase increases by 1 every period, real number
a = 4*pi;    % modify freq to have two peaks per period
b = -pi/2;   % initial phaseshift
profile = sin(a*phase + b) + 1; % pulse profile

% Simulate the photon arrivals
lam = lamb + lams*profile; % total arrival rate
R = poissrnd(lam); % Generate poisson random number (0 or 1)



%% Plotting
totalPhotonCount = sum(R)
averagePecentChanceOfArrival = totalPhotonCount/nT*100
R(R == 0) = NaN; % For plotting, remove zeros
profile = profile*max(R)/max(profile);
plot(phase,profile); hold on;
plot(phase,R,'*');
title 'Photon Arrivals'
xlabel Phase; ylabel 'Photon Arrival'; legend 'Pulse Profile' 'Photon Arrival'




    