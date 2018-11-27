function [PSR_NAME]  = search_param(var, val1, val2)
load('millisecond_pulsar_database.mat');
switch var
    case 'A1'
        if nargin < 3
            val2 = 0;
            best = A1(1);
            for i = 1:length(A1)
                if(abs(best-val1) > abs(A1(i)-val1))
                    best = A1(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(A1),1);
            for i = 1:length(A1)
                if(A1(i)>=val1 && A1(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(A1)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(A1),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'A1err'
        if nargin < 3
            val2 = 0;
            best = A1err(1);
            for i = 1:length(A1err)
                if(abs(best-val1) > abs(A1err(i)-val1))
                    best = A1err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(A1err),1);
            for i = 1:length(A1err)
                if(A1err(i)>=val1 && A1err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(A1err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(A1err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'AGE'
        if nargin < 3
            val2 = 0;
            best = AGE(1);
            for i = 1:length(AGE)
                if(abs(best-val1) > abs(AGE(i)-val1))
                    best = AGE(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(AGE),1);
            for i = 1:length(AGE)
                if(AGE(i)>=val1 && AGE(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(AGE)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(AGE),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'AGE_I'
        if nargin < 3
            val2 = 0;
            best = AGE_I(1);
            for i = 1:length(AGE_I)
                if(abs(best-val1) > abs(AGE_I(i)-val1))
                    best = AGE_I(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(AGE_I),1);
            for i = 1:length(AGE_I)
                if(AGE_I(i)>=val1 && AGE_I(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(AGE_I)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(AGE_I),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'B_LC'
        if nargin < 3
            val2 = 0;
            best = B_LC(1);
            for i = 1:length(B_LC)
                if(abs(best-val1) > abs(B_LC(i)-val1))
                    best = B_LC(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(B_LC),1);
            for i = 1:length(B_LC)
                if(B_LC(i)>=val1 && B_LC(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(B_LC)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(B_LC),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'BSURF'
        if nargin < 3
            val2 = 0;
            best = BSURF(1);
            for i = 1:length(BSURF)
                if(abs(best-val1) > abs(BSURF(i)-val1))
                    best = BSURF(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(BSURF),1);
            for i = 1:length(BSURF)
                if(BSURF(i)>=val1 && BSURF(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(BSURF)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(BSURF),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'BSURF_I'
        if nargin < 3
            val2 = 0;
            best = BSURF_I(1);
            for i = 1:length(BSURF_I)
                if(abs(best-val1) > abs(BSURF_I(i)-val1))
                    best = BSURF_I(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(BSURF_I),1);
            for i = 1:length(BSURF_I)
                if(BSURF_I(i)>=val1 && BSURF_I(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(BSURF_I)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(BSURF_I),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DECJD'
        if nargin < 3
            val2 = 0;
            best = DECJD(1);
            for i = 1:length(DECJD)
                if(abs(best-val1) > abs(DECJD(i)-val1))
                    best = DECJD(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DECJD),1);
            for i = 1:length(DECJD)
                if(DECJD(i)>=val1 && DECJD(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DECJD)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DECJD),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DECJerr'
        if nargin < 3
            val2 = 0;
            best = DECJerr(1);
            for i = 1:length(DECJerr)
                if(abs(best-val1) > abs(DECJerr(i)-val1))
                    best = DECJerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DECJerr),1);
            for i = 1:length(DECJerr)
                if(DECJerr(i)>=val1 && DECJerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DECJerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DECJerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DISC'
        if nargin < 3
            val2 = 0;
            best = DISC(1);
            for i = 1:length(DISC)
                if(abs(best-val1) > abs(DISC(i)-val1))
                    best = DISC(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DISC),1);
            for i = 1:length(DISC)
                if(DISC(i)>=val1 && DISC(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DISC)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DISC),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DIST'
        if nargin < 3
            val2 = 0;
            best = DIST(1);
            for i = 1:length(DIST)
                if(abs(best-val1) > abs(DIST(i)-val1))
                    best = DIST(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DIST),1);
            for i = 1:length(DIST)
                if(DIST(i)>=val1 && DIST(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DIST)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DIST),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DIST_DM'
        if nargin < 3
            val2 = 0;
            best = DIST_DM(1);
            for i = 1:length(DIST_DM)
                if(abs(best-val1) > abs(DIST_DM(i)-val1))
                    best = DIST_DM(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DIST_DM),1);
            for i = 1:length(DIST_DM)
                if(DIST_DM(i)>=val1 && DIST_DM(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DIST_DM)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DIST_DM),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DM'
        if nargin < 3
            val2 = 0;
            best = DM(1);
            for i = 1:length(DM)
                if(abs(best-val1) > abs(DM(i)-val1))
                    best = DM(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DM),1);
            for i = 1:length(DM)
                if(DM(i)>=val1 && DM(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DM)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DM),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DM1'
        if nargin < 3
            val2 = 0;
            best = DM1(1);
            for i = 1:length(DM1)
                if(abs(best-val1) > abs(DM1(i)-val1))
                    best = DM1(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DM1),1);
            for i = 1:length(DM1)
                if(DM1(i)>=val1 && DM1(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DM1)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DM1),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DM1err'
        if nargin < 3
            val2 = 0;
            best = DM1err(1);
            for i = 1:length(DM1err)
                if(abs(best-val1) > abs(DM1err(i)-val1))
                    best = DM1err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DM1err),1);
            for i = 1:length(DM1err)
                if(DM1err(i)>=val1 && DM1err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DM1err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DM1err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DMerr'
        if nargin < 3
            val2 = 0;
            best = DMerr(1);
            for i = 1:length(DMerr)
                if(abs(best-val1) > abs(DMerr(i)-val1))
                    best = DMerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DMerr),1);
            for i = 1:length(DMerr)
                if(DMerr(i)>=val1 && DMerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DMerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DMerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'DMsinb'
        if nargin < 3
            val2 = 0;
            best = DMsinb(1);
            for i = 1:length(DMsinb)
                if(abs(best-val1) > abs(DMsinb(i)-val1))
                    best = DMsinb(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(DMsinb),1);
            for i = 1:length(DMsinb)
                if(DMsinb(i)>=val1 && DMsinb(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(DMsinb)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(DMsinb),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'ECC'
        if nargin < 3
            val2 = 0;
            best = ECC(1);
            for i = 1:length(ECC)
                if(abs(best-val1) > abs(ECC(i)-val1))
                    best = ECC(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(ECC),1);
            for i = 1:length(ECC)
                if(ECC(i)>=val1 && ECC(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(ECC)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(ECC),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'ECCerr'
        if nargin < 3
            val2 = 0;
            best = ECCerr(1);
            for i = 1:length(ECCerr)
                if(abs(best-val1) > abs(ECCerr(i)-val1))
                    best = ECCerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(ECCerr),1);
            for i = 1:length(ECCerr)
                if(ECCerr(i)>=val1 && ECCerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(ECCerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(ECCerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'EDOT'
        if nargin < 3
            val2 = 0;
            best = EDOT(1);
            for i = 1:length(EDOT)
                if(abs(best-val1) > abs(EDOT(i)-val1))
                    best = EDOT(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(EDOT),1);
            for i = 1:length(EDOT)
                if(EDOT(i)>=val1 && EDOT(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(EDOT)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(EDOT),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'EDOTD2'
        if nargin < 3
            val2 = 0;
            best = EDOTD2(1);
            for i = 1:length(EDOTD2)
                if(abs(best-val1) > abs(EDOTD2(i)-val1))
                    best = EDOTD2(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(EDOTD2),1);
            for i = 1:length(EDOTD2)
                if(EDOTD2(i)>=val1 && EDOTD2(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(EDOTD2)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(EDOTD2),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'ELAT'
        if nargin < 3
            val2 = 0;
            best = ELAT(1);
            for i = 1:length(ELAT)
                if(abs(best-val1) > abs(ELAT(i)-val1))
                    best = ELAT(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(ELAT),1);
            for i = 1:length(ELAT)
                if(ELAT(i)>=val1 && ELAT(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(ELAT)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(ELAT),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'ELATerr'
        if nargin < 3
            val2 = 0;
            best = ELATerr(1);
            for i = 1:length(ELATerr)
                if(abs(best-val1) > abs(ELATerr(i)-val1))
                    best = ELATerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(ELATerr),1);
            for i = 1:length(ELATerr)
                if(ELATerr(i)>=val1 && ELATerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(ELATerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(ELATerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'ELONG'
        if nargin < 3
            val2 = 0;
            best = ELONG(1);
            for i = 1:length(ELONG)
                if(abs(best-val1) > abs(ELONG(i)-val1))
                    best = ELONG(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(ELONG),1);
            for i = 1:length(ELONG)
                if(ELONG(i)>=val1 && ELONG(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(ELONG)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(ELONG),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'ELONGerr'
        if nargin < 3
            val2 = 0;
            best = ELONGerr(1);
            for i = 1:length(ELONGerr)
                if(abs(best-val1) > abs(ELONGerr(i)-val1))
                    best = ELONGerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(ELONGerr),1);
            for i = 1:length(ELONGerr)
                if(ELONGerr(i)>=val1 && ELONGerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(ELONGerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(ELONGerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'EPS1'
        if nargin < 3
            val2 = 0;
            best = EPS1(1);
            for i = 1:length(EPS1)
                if(abs(best-val1) > abs(EPS1(i)-val1))
                    best = EPS1(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(EPS1),1);
            for i = 1:length(EPS1)
                if(EPS1(i)>=val1 && EPS1(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(EPS1)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(EPS1),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'EPS1err'
        if nargin < 3
            val2 = 0;
            best = EPS1err(1);
            for i = 1:length(EPS1err)
                if(abs(best-val1) > abs(EPS1err(i)-val1))
                    best = EPS1err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(EPS1err),1);
            for i = 1:length(EPS1err)
                if(EPS1err(i)>=val1 && EPS1err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(EPS1err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(EPS1err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'EPS2'
        if nargin < 3
            val2 = 0;
            best = EPS2(1);
            for i = 1:length(EPS2)
                if(abs(best-val1) > abs(EPS2(i)-val1))
                    best = EPS2(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(EPS2),1);
            for i = 1:length(EPS2)
                if(EPS2(i)>=val1 && EPS2(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(EPS2)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(EPS2),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'EPS2err'
        if nargin < 3
            val2 = 0;
            best = EPS2err(1);
            for i = 1:length(EPS2err)
                if(abs(best-val1) > abs(EPS2err(i)-val1))
                    best = EPS2err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(EPS2err),1);
            for i = 1:length(EPS2err)
                if(EPS2err(i)>=val1 && EPS2err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(EPS2err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(EPS2err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'F0'
        if nargin < 3
            val2 = 0;
            best = F0(1);
            for i = 1:length(F0)
                if(abs(best-val1) > abs(F0(i)-val1))
                    best = F0(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(F0),1);
            for i = 1:length(F0)
                if(F0(i)>=val1 && F0(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(F0)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(F0),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'F0err'
        if nargin < 3
            val2 = 0;
            best = F0err(1);
            for i = 1:length(F0err)
                if(abs(best-val1) > abs(F0err(i)-val1))
                    best = F0err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(F0err),1);
            for i = 1:length(F0err)
                if(F0err(i)>=val1 && F0err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(F0err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(F0err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'F1'
        if nargin < 3
            val2 = 0;
            best = F1(1);
            for i = 1:length(F1)
                if(abs(best-val1) > abs(F1(i)-val1))
                    best = F1(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(F1),1);
            for i = 1:length(F1)
                if(F1(i)>=val1 && F1(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(F1)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(F1),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'F1err'
        if nargin < 3
            val2 = 0;
            best = F1err(1);
            for i = 1:length(F1err)
                if(abs(best-val1) > abs(F1err(i)-val1))
                    best = F1err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(F1err),1);
            for i = 1:length(F1err)
                if(F1err(i)>=val1 && F1err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(F1err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(F1err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'F2'
        if nargin < 3
            val2 = 0;
            best = F2(1);
            for i = 1:length(F2)
                if(abs(best-val1) > abs(F2(i)-val1))
                    best = F2(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(F2),1);
            for i = 1:length(F2)
                if(F2(i)>=val1 && F2(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(F2)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(F2),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'F2err'
        if nargin < 3
            val2 = 0;
            best = F2err(1);
            for i = 1:length(F2err)
                if(abs(best-val1) > abs(F2err(i)-val1))
                    best = F2err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(F2err),1);
            for i = 1:length(F2err)
                if(F2err(i)>=val1 && F2err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(F2err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(F2err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'F3'
        if nargin < 3
            val2 = 0;
            best = F3(1);
            for i = 1:length(F3)
                if(abs(best-val1) > abs(F3(i)-val1))
                    best = F3(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(F3),1);
            for i = 1:length(F3)
                if(F3(i)>=val1 && F3(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(F3)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(F3),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'F3err'
        if nargin < 3
            val2 = 0;
            best = F3err(1);
            for i = 1:length(F3err)
                if(abs(best-val1) > abs(F3err(i)-val1))
                    best = F3err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(F3err),1);
            for i = 1:length(F3err)
                if(F3err(i)>=val1 && F3err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(F3err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(F3err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'Gb'
        if nargin < 3
            val2 = 0;
            best = Gb(1);
            for i = 1:length(Gb)
                if(abs(best-val1) > abs(Gb(i)-val1))
                    best = Gb(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(Gb),1);
            for i = 1:length(Gb)
                if(Gb(i)>=val1 && Gb(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(Gb)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(Gb),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'Gl'
        if nargin < 3
            val2 = 0;
            best = Gl(1);
            for i = 1:length(Gl)
                if(abs(best-val1) > abs(Gl(i)-val1))
                    best = Gl(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(Gl),1);
            for i = 1:length(Gl)
                if(Gl(i)>=val1 && Gl(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(Gl)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(Gl),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'Median'
        if nargin < 3
            val2 = 0;
            best = Median(1);
            for i = 1:length(Median)
                if(abs(best-val1) > abs(Median(i)-val1))
                    best = Median(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(Median),1);
            for i = 1:length(Median)
                if(Median(i)>=val1 && Median(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(Median)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(Median),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'Minimum'
        if nargin < 3
            val2 = 0;
            best = Minimum(1);
            for i = 1:length(Minimum)
                if(abs(best-val1) > abs(Minimum(i)-val1))
                    best = Minimum(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(Minimum),1);
            for i = 1:length(Minimum)
                if(Minimum(i)>=val1 && Minimum(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(Minimum)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(Minimum),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'NGLT'
        if nargin < 3
            val2 = 0;
            best = NGLT(1);
            for i = 1:length(NGLT)
                if(abs(best-val1) > abs(NGLT(i)-val1))
                    best = NGLT(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(NGLT),1);
            for i = 1:length(NGLT)
                if(NGLT(i)>=val1 && NGLT(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(NGLT)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(NGLT),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'OM'
        if nargin < 3
            val2 = 0;
            best = OM(1);
            for i = 1:length(OM)
                if(abs(best-val1) > abs(OM(i)-val1))
                    best = OM(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(OM),1);
            for i = 1:length(OM)
                if(OM(i)>=val1 && OM(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(OM)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(OM),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'OMerr'
        if nargin < 3
            val2 = 0;
            best = OMerr(1);
            for i = 1:length(OMerr)
                if(abs(best-val1) > abs(OMerr(i)-val1))
                    best = OMerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(OMerr),1);
            for i = 1:length(OMerr)
                if(OMerr(i)>=val1 && OMerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(OMerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(OMerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'OSURVEY'
        if nargin < 3
            val2 = 0;
            best = OSURVEY(1);
            for i = 1:length(OSURVEY)
                if(abs(best-val1) > abs(OSURVEY(i)-val1))
                    best = OSURVEY(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(OSURVEY),1);
            for i = 1:length(OSURVEY)
                if(OSURVEY(i)>=val1 && OSURVEY(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(OSURVEY)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(OSURVEY),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'P0'
        if nargin < 3
            val2 = 0;
            best = P0(1);
            for i = 1:length(P0)
                if(abs(best-val1) > abs(P0(i)-val1))
                    best = P0(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(P0),1);
            for i = 1:length(P0)
                if(P0(i)>=val1 && P0(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(P0)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(P0),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'P0err'
        if nargin < 3
            val2 = 0;
            best = P0err(1);
            for i = 1:length(P0err)
                if(abs(best-val1) > abs(P0err(i)-val1))
                    best = P0err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(P0err),1);
            for i = 1:length(P0err)
                if(P0err(i)>=val1 && P0err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(P0err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(P0err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'P1'
        if nargin < 3
            val2 = 0;
            best = P1(1);
            for i = 1:length(P1)
                if(abs(best-val1) > abs(P1(i)-val1))
                    best = P1(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(P1),1);
            for i = 1:length(P1)
                if(P1(i)>=val1 && P1(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(P1)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(P1),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'P1_I'
        if nargin < 3
            val2 = 0;
            best = P1_I(1);
            for i = 1:length(P1_I)
                if(abs(best-val1) > abs(P1_I(i)-val1))
                    best = P1_I(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(P1_I),1);
            for i = 1:length(P1_I)
                if(P1_I(i)>=val1 && P1_I(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(P1_I)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(P1_I),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'P1err'
        if nargin < 3
            val2 = 0;
            best = P1err(1);
            for i = 1:length(P1err)
                if(abs(best-val1) > abs(P1err(i)-val1))
                    best = P1err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(P1err),1);
            for i = 1:length(P1err)
                if(P1err(i)>=val1 && P1err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(P1err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(P1err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PB'
        if nargin < 3
            val2 = 0;
            best = PB(1);
            for i = 1:length(PB)
                if(abs(best-val1) > abs(PB(i)-val1))
                    best = PB(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PB),1);
            for i = 1:length(PB)
                if(PB(i)>=val1 && PB(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PB)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PB),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PBerr'
        if nargin < 3
            val2 = 0;
            best = PBerr(1);
            for i = 1:length(PBerr)
                if(abs(best-val1) > abs(PBerr(i)-val1))
                    best = PBerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PBerr),1);
            for i = 1:length(PBerr)
                if(PBerr(i)>=val1 && PBerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PBerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PBerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PEPOCH'
        if nargin < 3
            val2 = 0;
            best = PEPOCH(1);
            for i = 1:length(PEPOCH)
                if(abs(best-val1) > abs(PEPOCH(i)-val1))
                    best = PEPOCH(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PEPOCH),1);
            for i = 1:length(PEPOCH)
                if(PEPOCH(i)>=val1 && PEPOCH(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PEPOCH)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PEPOCH),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMDEC'
        if nargin < 3
            val2 = 0;
            best = PMDEC(1);
            for i = 1:length(PMDEC)
                if(abs(best-val1) > abs(PMDEC(i)-val1))
                    best = PMDEC(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMDEC),1);
            for i = 1:length(PMDEC)
                if(PMDEC(i)>=val1 && PMDEC(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMDEC)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMDEC),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMDECerr'
        if nargin < 3
            val2 = 0;
            best = PMDECerr(1);
            for i = 1:length(PMDECerr)
                if(abs(best-val1) > abs(PMDECerr(i)-val1))
                    best = PMDECerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMDECerr),1);
            for i = 1:length(PMDECerr)
                if(PMDECerr(i)>=val1 && PMDECerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMDECerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMDECerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMELAT'
        if nargin < 3
            val2 = 0;
            best = PMELAT(1);
            for i = 1:length(PMELAT)
                if(abs(best-val1) > abs(PMELAT(i)-val1))
                    best = PMELAT(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMELAT),1);
            for i = 1:length(PMELAT)
                if(PMELAT(i)>=val1 && PMELAT(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMELAT)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMELAT),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMELATerr'
        if nargin < 3
            val2 = 0;
            best = PMELATerr(1);
            for i = 1:length(PMELATerr)
                if(abs(best-val1) > abs(PMELATerr(i)-val1))
                    best = PMELATerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMELATerr),1);
            for i = 1:length(PMELATerr)
                if(PMELATerr(i)>=val1 && PMELATerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMELATerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMELATerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMELONG'
        if nargin < 3
            val2 = 0;
            best = PMELONG(1);
            for i = 1:length(PMELONG)
                if(abs(best-val1) > abs(PMELONG(i)-val1))
                    best = PMELONG(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMELONG),1);
            for i = 1:length(PMELONG)
                if(PMELONG(i)>=val1 && PMELONG(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMELONG)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMELONG),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMELONGerr'
        if nargin < 3
            val2 = 0;
            best = PMELONGerr(1);
            for i = 1:length(PMELONGerr)
                if(abs(best-val1) > abs(PMELONGerr(i)-val1))
                    best = PMELONGerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMELONGerr),1);
            for i = 1:length(PMELONGerr)
                if(PMELONGerr(i)>=val1 && PMELONGerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMELONGerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMELONGerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMRA'
        if nargin < 3
            val2 = 0;
            best = PMRA(1);
            for i = 1:length(PMRA)
                if(abs(best-val1) > abs(PMRA(i)-val1))
                    best = PMRA(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMRA),1);
            for i = 1:length(PMRA)
                if(PMRA(i)>=val1 && PMRA(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMRA)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMRA),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMRAerr'
        if nargin < 3
            val2 = 0;
            best = PMRAerr(1);
            for i = 1:length(PMRAerr)
                if(abs(best-val1) > abs(PMRAerr(i)-val1))
                    best = PMRAerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMRAerr),1);
            for i = 1:length(PMRAerr)
                if(PMRAerr(i)>=val1 && PMRAerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMRAerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMRAerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMTOT'
        if nargin < 3
            val2 = 0;
            best = PMTOT(1);
            for i = 1:length(PMTOT)
                if(abs(best-val1) > abs(PMTOT(i)-val1))
                    best = PMTOT(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMTOT),1);
            for i = 1:length(PMTOT)
                if(PMTOT(i)>=val1 && PMTOT(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMTOT)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMTOT),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PMTOTerr'
        if nargin < 3
            val2 = 0;
            best = PMTOTerr(1);
            for i = 1:length(PMTOTerr)
                if(abs(best-val1) > abs(PMTOTerr(i)-val1))
                    best = PMTOTerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PMTOTerr),1);
            for i = 1:length(PMTOTerr)
                if(PMTOTerr(i)>=val1 && PMTOTerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PMTOTerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PMTOTerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'POSEPOCH'
        if nargin < 3
            val2 = 0;
            best = POSEPOCH(1);
            for i = 1:length(POSEPOCH)
                if(abs(best-val1) > abs(POSEPOCH(i)-val1))
                    best = POSEPOCH(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(POSEPOCH),1);
            for i = 1:length(POSEPOCH)
                if(POSEPOCH(i)>=val1 && POSEPOCH(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(POSEPOCH)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(POSEPOCH),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PX'
        if nargin < 3
            val2 = 0;
            best = PX(1);
            for i = 1:length(PX)
                if(abs(best-val1) > abs(PX(i)-val1))
                    best = PX(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PX),1);
            for i = 1:length(PX)
                if(PX(i)>=val1 && PX(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PX)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PX),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'PXerr'
        if nargin < 3
            val2 = 0;
            best = PXerr(1);
            for i = 1:length(PXerr)
                if(abs(best-val1) > abs(PXerr(i)-val1))
                    best = PXerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(PXerr),1);
            for i = 1:length(PXerr)
                if(PXerr(i)>=val1 && PXerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(PXerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(PXerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'R_LUM'
        if nargin < 3
            val2 = 0;
            best = R_LUM(1);
            for i = 1:length(R_LUM)
                if(abs(best-val1) > abs(R_LUM(i)-val1))
                    best = R_LUM(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(R_LUM),1);
            for i = 1:length(R_LUM)
                if(R_LUM(i)>=val1 && R_LUM(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(R_LUM)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(R_LUM),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'R_LUM14'
        if nargin < 3
            val2 = 0;
            best = R_LUM14(1);
            for i = 1:length(R_LUM14)
                if(abs(best-val1) > abs(R_LUM14(i)-val1))
                    best = R_LUM14(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(R_LUM14),1);
            for i = 1:length(R_LUM14)
                if(R_LUM14(i)>=val1 && R_LUM14(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(R_LUM14)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(R_LUM14),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'RAJD'
        if nargin < 3
            val2 = 0;
            best = RAJD(1);
            for i = 1:length(RAJD)
                if(abs(best-val1) > abs(RAJD(i)-val1))
                    best = RAJD(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(RAJD),1);
            for i = 1:length(RAJD)
                if(RAJD(i)>=val1 && RAJD(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(RAJD)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(RAJD),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'RAJDerr'
        if nargin < 3
            val2 = 0;
            best = RAJDerr(1);
            for i = 1:length(RAJDerr)
                if(abs(best-val1) > abs(RAJDerr(i)-val1))
                    best = RAJDerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(RAJDerr),1);
            for i = 1:length(RAJDerr)
                if(RAJDerr(i)>=val1 && RAJDerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(RAJDerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(RAJDerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'RM'
        if nargin < 3
            val2 = 0;
            best = RM(1);
            for i = 1:length(RM)
                if(abs(best-val1) > abs(RM(i)-val1))
                    best = RM(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(RM),1);
            for i = 1:length(RM)
                if(RM(i)>=val1 && RM(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(RM)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(RM),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'RMerr'
        if nargin < 3
            val2 = 0;
            best = RMerr(1);
            for i = 1:length(RMerr)
                if(abs(best-val1) > abs(RMerr(i)-val1))
                    best = RMerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(RMerr),1);
            for i = 1:length(RMerr)
                if(RMerr(i)>=val1 && RMerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(RMerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(RMerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'S1400'
        if nargin < 3
            val2 = 0;
            best = S1400(1);
            for i = 1:length(S1400)
                if(abs(best-val1) > abs(S1400(i)-val1))
                    best = S1400(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(S1400),1);
            for i = 1:length(S1400)
                if(S1400(i)>=val1 && S1400(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(S1400)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(S1400),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'S1400err'
        if nargin < 3
            val2 = 0;
            best = S1400err(1);
            for i = 1:length(S1400err)
                if(abs(best-val1) > abs(S1400err(i)-val1))
                    best = S1400err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(S1400err),1);
            for i = 1:length(S1400err)
                if(S1400err(i)>=val1 && S1400err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(S1400err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(S1400err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'S2000'
        if nargin < 3
            val2 = 0;
            best = S2000(1);
            for i = 1:length(S2000)
                if(abs(best-val1) > abs(S2000(i)-val1))
                    best = S2000(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(S2000),1);
            for i = 1:length(S2000)
                if(S2000(i)>=val1 && S2000(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(S2000)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(S2000),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'S2000err'
        if nargin < 3
            val2 = 0;
            best = S2000err(1);
            for i = 1:length(S2000err)
                if(abs(best-val1) > abs(S2000err(i)-val1))
                    best = S2000err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(S2000err),1);
            for i = 1:length(S2000err)
                if(S2000err(i)>=val1 && S2000err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(S2000err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(S2000err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'S400'
        if nargin < 3
            val2 = 0;
            best = S400(1);
            for i = 1:length(S400)
                if(abs(best-val1) > abs(S400(i)-val1))
                    best = S400(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(S400),1);
            for i = 1:length(S400)
                if(S400(i)>=val1 && S400(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(S400)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(S400),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'S400err'
        if nargin < 3
            val2 = 0;
            best = S400err(1);
            for i = 1:length(S400err)
                if(abs(best-val1) > abs(S400err(i)-val1))
                    best = S400err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(S400err),1);
            for i = 1:length(S400err)
                if(S400err(i)>=val1 && S400err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(S400err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(S400err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'T0'
        if nargin < 3
            val2 = 0;
            best = T0(1);
            for i = 1:length(T0)
                if(abs(best-val1) > abs(T0(i)-val1))
                    best = T0(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(T0),1);
            for i = 1:length(T0)
                if(T0(i)>=val1 && T0(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(T0)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(T0),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'T0err'
        if nargin < 3
            val2 = 0;
            best = T0err(1);
            for i = 1:length(T0err)
                if(abs(best-val1) > abs(T0err(i)-val1))
                    best = T0err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(T0err),1);
            for i = 1:length(T0err)
                if(T0err(i)>=val1 && T0err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(T0err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(T0err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'TASC'
        if nargin < 3
            val2 = 0;
            best = TASC(1);
            for i = 1:length(TASC)
                if(abs(best-val1) > abs(TASC(i)-val1))
                    best = TASC(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(TASC),1);
            for i = 1:length(TASC)
                if(TASC(i)>=val1 && TASC(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(TASC)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(TASC),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'TASCerr'
        if nargin < 3
            val2 = 0;
            best = TASCerr(1);
            for i = 1:length(TASCerr)
                if(abs(best-val1) > abs(TASCerr(i)-val1))
                    best = TASCerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(TASCerr),1);
            for i = 1:length(TASCerr)
                if(TASCerr(i)>=val1 && TASCerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(TASCerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(TASCerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'TAU_SC'
        if nargin < 3
            val2 = 0;
            best = TAU_SC(1);
            for i = 1:length(TAU_SC)
                if(abs(best-val1) > abs(TAU_SC(i)-val1))
                    best = TAU_SC(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(TAU_SC),1);
            for i = 1:length(TAU_SC)
                if(TAU_SC(i)>=val1 && TAU_SC(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(TAU_SC)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(TAU_SC),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'TAU_SCerr'
        if nargin < 3
            val2 = 0;
            best = TAU_SCerr(1);
            for i = 1:length(TAU_SCerr)
                if(abs(best-val1) > abs(TAU_SCerr(i)-val1))
                    best = TAU_SCerr(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(TAU_SCerr),1);
            for i = 1:length(TAU_SCerr)
                if(TAU_SCerr(i)>=val1 && TAU_SCerr(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(TAU_SCerr)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(TAU_SCerr),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'VTRANS'
        if nargin < 3
            val2 = 0;
            best = VTRANS(1);
            for i = 1:length(VTRANS)
                if(abs(best-val1) > abs(VTRANS(i)-val1))
                    best = VTRANS(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(VTRANS),1);
            for i = 1:length(VTRANS)
                if(VTRANS(i)>=val1 && VTRANS(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(VTRANS)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(VTRANS),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'W10'
        if nargin < 3
            val2 = 0;
            best = W10(1);
            for i = 1:length(W10)
                if(abs(best-val1) > abs(W10(i)-val1))
                    best = W10(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(W10),1);
            for i = 1:length(W10)
                if(W10(i)>=val1 && W10(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(W10)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(W10),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'W10err'
        if nargin < 3
            val2 = 0;
            best = W10err(1);
            for i = 1:length(W10err)
                if(abs(best-val1) > abs(W10err(i)-val1))
                    best = W10err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(W10err),1);
            for i = 1:length(W10err)
                if(W10err(i)>=val1 && W10err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(W10err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(W10err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'W50'
        if nargin < 3
            val2 = 0;
            best = W50(1);
            for i = 1:length(W50)
                if(abs(best-val1) > abs(W50(i)-val1))
                    best = W50(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(W50),1);
            for i = 1:length(W50)
                if(W50(i)>=val1 && W50(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(W50)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(W50),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'W50err'
        if nargin < 3
            val2 = 0;
            best = W50err(1);
            for i = 1:length(W50err)
                if(abs(best-val1) > abs(W50err(i)-val1))
                    best = W50err(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(W50err),1);
            for i = 1:length(W50err)
                if(W50err(i)>=val1 && W50err(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(W50err)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(W50err),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'XX'
        if nargin < 3
            val2 = 0;
            best = XX(1);
            for i = 1:length(XX)
                if(abs(best-val1) > abs(XX(i)-val1))
                    best = XX(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(XX),1);
            for i = 1:length(XX)
                if(XX(i)>=val1 && XX(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(XX)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(XX),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'YY'
        if nargin < 3
            val2 = 0;
            best = YY(1);
            for i = 1:length(YY)
                if(abs(best-val1) > abs(YY(i)-val1))
                    best = YY(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(YY),1);
            for i = 1:length(YY)
                if(YY(i)>=val1 && YY(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(YY)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(YY),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
    case 'ZZ'
        if nargin < 3
            val2 = 0;
            best = ZZ(1);
            for i = 1:length(ZZ)
                if(abs(best-val1) > abs(ZZ(i)-val1))
                    best = ZZ(i);
                    best_index = i;
                end
            end
            PSR_NAME  = NAME{best_index};
        else
            j = 1;
            temp_PSR_NAME = cell(length(ZZ),1);
            for i = 1:length(ZZ)
                if(ZZ(i)>=val1 && ZZ(i)<=val2)
                    temp_PSR_NAME(j) = NAME(i);
                    j = j+1;
                end
            end
            for k = 1:length(ZZ)
                if(isempty(temp_PSR_NAME{k,1}))
                    k = k-1;
                    break;
                end
            end
            if (k == length(temp_PSR_NAME))
                PSR_NAME = temp_PSR_NAME;
            else
                PSR_NAME = cell(length(ZZ),1);
                PSR_NAME = temp_PSR_NAME(1:k);
            end
        end
%%
end
