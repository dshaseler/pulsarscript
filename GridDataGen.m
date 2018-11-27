
% clear; close all; clc;

function [tMat,xList,yList,zList] = GridDataGen(n,limits,directions,dim)

% This function generats the pulse arrival times at various points in a
% grid given the directions of pulsar signals, a grid size, and a number of
% points. Here it is assumed that pulsars are cataloged according to a
% common reference time. At every point in space, we are logging how much
% later or earlier each pulse arrives than expected. All pulsars have the
% same reference time (0).


c = 3e5;
nP = size(directions,2);
x = linspace(-limits,limits,n)';
y = linspace(-limits,limits,n)';
if nargin == 3
    dim = 2;
end

if dim == 3
    N = n^3;
    z = linspace(-limits,limits,n)';
    zList = ones(N,1);
else 
    N = n^2;
end

tMat = ones(N,nP);
xList = ones(N,1);
yList = ones(N,1);


for i = 1:n
    for j = 1:n
        if dim == 3
            for k = 1:n
                for p = 1:nP
                    tMat(n^2*(i-1)+n*(j-1)+k,p) = directions(:,p)'*[x(i); y(j); z(k)]/c;
                    xList(n^2*(i-1)+n*(j-1)+k) = x(i);
                    yList(n^2*(i-1)+n*(j-1)+k) = y(j);
                    zList(n^2*(i-1)+n*(j-1)+k) = z(k);
                end
            end
        else
            for p = 1:nP
                tMat((i-1)*n+j,p) = directions(:,p)'*[x(i); y(j)]/c;
                xList((i-1)*n+j) = x(i);
                yList((i-1)*n+j) = y(j);
            end
        end
    end
end


