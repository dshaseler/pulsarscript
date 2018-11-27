%Bootstrapping Method
%Version 5.0
%
%Estimation of the Strength of a Periodic Signal from Photon Arrival Times
%Swanepoel 1996

clear; clc; close all;
%% STEP 1. Creating Initial Sample
% % The folded photon arrival times for a pulsar is loaded 
%x = [1.1 1.2 1.3 1.7 2.0 2.5 2.7 2.8 2.9 3.0 ...];    

%generate a random gaussian distribution to replicate photon arrival times
%from a pulsar
tic
rng(109); %random number generator seed
n = 1000;
sigma1=1; sigma2=1; 
avg1=0; avg2=4; 
ratio=0.5; 
x_initial=[randn(n*ratio,1)*sigma1 + avg1; randn(n*(1-ratio),1)*sigma2 + avg2];%Folded arrival times; normrnd(mu,sigma,[m,n])
mu = mean(x_initial); stdev = std(x_initial);

y_initial = sort(x_initial,'ascend');   %sort arrival times in ascending order

xp(1,:) = randsample(x_initial,n,true);  %resampling of data with replacement
yp(1,:) = sort(xp,'ascend');             %arrange in ascending order


%% STEP 2. Resampling
if n <= 500     %Rule of thumb for calculating B (# of resampling iterations)
    B = 500;
else
    B = floor(100*(1+6.6*exp(-n/1000)));
end
       
for b = 2:B         %resampling. each row is a new sample
    xp(b,:) = randsample(x_initial,n,true);  
    yp(b,:) = sort(xp(b,:),'ascend');
end

%% STEP 3. Calculating Integer s_hat
%Finding vs(b)
N = floor((n-1)/2);

% tests each j value within the interval and finds the length of the largest
% interval for each sample.
% the max difference can be found without having to constrict the
% interval of s as done in previous versions.
vs = zeros(1,B); test_vs_j = zeros(B,(n-1)); index_vs = zeros(1,B); %preallocation
for b=1:B
    for j=2:1:(n-1)
        test_vs_j(b,j) = (yp(b,j+1) - yp(b,j-1));
    end
    [vs(b), index_vs(b)] = max(test_vs_j(b,:));
end

%vs_bar
vs_bar = (1/B)*sum(vs);

%ws(b) - the variance of vs(b)
for b=1:B
    sum_ws = (vs(b) - vs_bar)^2;
    ws(b) = (1/(B-1))*sum_ws;
end

%Finding vp(b) - same as vs(b) 
vp = zeros(1,B); index_vpb = zeros(1,B); test_vpb_j = zeros(B,(n-1)); %preallocation
for b=1:B
    for j=2:1:(n-1)
        test_vpb_j(b,j) = (yp(b,j+1) - yp(b,j-1));
    end
    [vp(b), index_vpb(b)] = max(test_vpb_j(b,:));
end

%finding vp_bar
vp_bar = (1/B)*sum(vp);

%finding w_i 
for b=1:1:B
    sum = (vp(b)-vp_bar)^2;
    w_i(b) = (1/(B-1))*sum;
end

% finding s_hat 
for s=1:N
    for i=(s+1):1:(s+floor(0.05*n))
        if (s+floor(0.05*n)) >length(w_i) %added this statement b/c at large n, i would exceed w_i length
            ww = max(w_i(1,(s+1):length(w_i)));
        else
           ww = max(w_i(1,(s+1):(s+floor(0.05*n)))); 
        end
    end
    
    if s<=(N-floor(0.05*n)) && ws(s)>= ww
        s_hat = s;
        break
    else
        s_hat = N-floor(0.05*n)+1;
    end
end
  

%% STEP 4. Finding Non-Parametric Estimator p_hat

%Finding integer k 

for j=(s_hat+1):1:(n-s_hat)
    k_c(j) = max(y_initial(j+s_hat) - y_initial(j-s_hat));
end

eps=10e-5;
for j=(s_hat+1):1:N
    tot = y_initial(j+s_hat) - y_initial(j-s_hat);
    if abs(tot - k_c(j)) <eps
        k = j + s_hat;
        break
    else
        continue
    end
end

%interval of phases, I
% % NOTE: This is not an estimate of the unpulsed interval, I is just used
% % in the construction of p_hat

I_lower_bound = y_initial(k-s_hat);
I_upper_bound = y_initial(k+s_hat);
length_I = I_upper_bound - I_lower_bound;

%p_hat
count = 0;
for i=1:n
    if x_initial(i) > I_lower_bound && x_initial(i) < I_upper_bound
        count = count+1;
    end
end
        
option = 1 - ((2*s_hat + 1)/(n*length_I));
option2 = 1 - (count)/(n*length_I);
%From equation 6, option & option2 should equal eachother, or be very close
p_hat = max(0,option);


%standard error of p_hat
SE_p_hat = ((2*s_hat + 1)^(1/2))/(n*length_I);

%% STEP 4.5. Finding the Confidence Interval
%for 90% CI, z(alpha/2)=1.645 for alpha = 0.10
%for 95% CI, z(alpha/2)=1.960 for alpha = 0.05
%for 99% CI, z(alpha/2)=2.576 for alpha = 0.01

alpha = 0.05;
z_alpha = 1.960;

CI_lower_bound = p_hat - (z_alpha*SE_p_hat);
CI_upper_bound = p_hat + (z_alpha*SE_p_hat);


%% STEP 5. Pulsed Fraction
bins = 50;

noise = (1-p_hat);
pulsed=0;
for i=1:(n*ratio)
    if ((x_initial(i)-avg1)/sigma1) > noise
        pulsed = pulsed+1;
    end
end

for i=(n*ratio+1):n
    if ((x_initial(i)-avg2)/sigma2) > noise
        pulsed = pulsed+1;
    end
end
    
Pf_percent = (pulsed/n)*100 %percentage
visual = p_hat*n/bins 

% 'visual' is the # of photons that marks the background level on the
% histogram. Therefore anything above this number is pulsed wheras anything
% below is considered background noise (unpulsed). Giving us the Pulsed
% Fraction percentage. Remember the histogram is just a visual representation, 
% the calculation of p_hat does not rely on the histogram in any way.

histogram(x_initial,bins)
title('Histogram of folded photon arrival times');
xlabel('Phase');
ylabel('# of counts');
grid minor
% figure
% histogram(xp,bins)
% title('Histogram of all resampled times');
% xlabel('Phase');
% ylabel('# of counts');
% grid minor

toc