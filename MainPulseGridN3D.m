clear; close all; clc;

% This script generates a 2D or 3D grid of points with pulse arrival
% times for multiple pulsars 

buildK = true;
c = 3e5; % speed of light [km/s]
plt = true;

if buildK
    nP = 3; 
    dim = 3;
    n = 100; 
    N = n^dim;
    limit = 1e6; % Limits of spatial volume [km]
    directions = MNorm((rand(dim,nP)-0.5));
    if dim == 2
        [dataMat,xList,yList] = GridDataGen(n,limit,directions,dim);
    else
        [dataMat,xList,yList,zList] = GridDataGen(n,limit,directions,dim);
    end
    
    kMat = ones(N,nP);
    IsMat = kMat;
    pList = ones(nP,1);
    qList = pList;
    dataSMat = dataMat;
else
    load('kVecPulseData');
end
    




%% Testing the search

% pick initial point in space to generate pulse
pos = round(rand*N);
noise = 1e-1;
I = false(N,1);

if plt 
    if dim == 2
        figure(1)
        plot(0,0,'ko'); grid on; hold on;
        axis([-limit limit -limit limit])
    else
        figure(1)
        plot3(0,0,0,'ko'); grid on; hold on;
        axis([-limit limit -limit limit -limit limit])
    end
end
arrivalSTR = '';

for i = 1:nP

    % now build the k-vector
    if buildK
        data = dataMat(:,i);
        [k, Is, p, q, dataS] = BuildkVec(data);
        kMat(:,i) = k;
        IsMat(:,i) = Is;
        pList(i) = p;
        qList(i) = q;
        dataMat(:,i) = data;
        dataSMat(:,i) = dataS;
    else
        p = pList(i);
        q = qList(i);
        k = kMat(:,i);
        dataS = dataSMat(:,i);
        Is = IsMat(:,i);
    end
    
    % Search the k-vector
    tArrival = dataMat(pos,i);
    a = max(tArrival - noise, dataSMat(1,i)); % prevent selection of data outside range
    b = min(tArrival + noise, dataSMat(end,i)); % prevent selection of data outside range
    [k1,k2] = k_search(a,b,p,q,k,dataS);
    Ir = Is(k1:k2);
    if  i == 1
        I(Ir) = true;
    else
        Itemp = false(N,1);
        Itemp(Ir) = true;
        I = I & Itemp;
    end

    xPos = xList(Ir);
    yPos = yList(Ir);
    if dim == 3
       zPos = zList(Ir); 
    end
    
    % plotting and printing
    if plt
        if dim == 2
            figure(1)
            Col = rand(1,3);
            Col = Col/norm(Col);
            plot(xPos,yPos,'Color',Col,'Marker','*','Linestyle','none');
            arrow([0,0], limit*0.2*directions(:,i),'Type','line','Color',Col);
        end
        
        if N < 1e5
            figure(2)
            plot(dataS,'*'); grid on; hold on;
            title 'K-Vector Data'
        end
    end
    
    arrivalSTR = [arrivalSTR, ', ', num2str(tArrival)];
end

if buildK
    if dim == 2
        save('kVecPulseData', 'dim', 'nP', 'N', 'limit', 'directions', 'kMat', 'IsMat', 'pList', 'qList', 'dataMat', 'dataSMat', 'xList', 'yList');
    else
        save('kVecPulseData', 'dim', 'nP', 'N', 'limit', 'directions', 'kMat', 'IsMat', 'pList', 'qList', 'dataMat', 'dataSMat', 'xList', 'yList', 'zList');
    end
    
end

xPosFinal = xList(I);
yPosFinal = yList(I);

if dim == 3
    zPosFinal = zList(I);
end


%% Plotting
if plt
    if dim == 2
        figure(1)
        plot(xPosFinal, yPosFinal, 'k*');
        xlabel 'x [km]'
        ylabel 'y [km]'
        title 'Final Possible Locations'
    else
        figure(1)
        plot3(xPosFinal, yPosFinal, zPosFinal, 'k*');
        xlabel 'x [km]'
        ylabel 'y [km]'
        zlabel 'z [km]'
        title 'Final Possible Locations'
    end
end

disp(['Arrival times measured: ', arrivalSTR]);
