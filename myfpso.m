% function [x val iteration] = fuzzy_pso(maxiteration, numpopulation, c1, c2, constrictionfactor, numvar, lbound, ubound)
 
% fuzzy_pso(100, 30, 2, 2, .01, 1, -1, 2)
maxiteration=100;
numpopulation=30;
c1=2; 
c2=2; 
constrictionfactor=.01;
numvar=1;
lbound=-2;
ubound=2;
%----------Set Parameters-----------
maxiter = maxiteration;
npop = numpopulation;
c1 = c1;
c2 = c2;
consfactor = constrictionfactor;
vmax = 0.1*(ubound - lbound);
nvar = numvar;
varsize = [1 nvar];
bestCost = []; %bestcost = zeros(maxiter, 1);
%average of costs at each iteration
avgCost =  []; %avgcost = zeros(maxiter, 1);




%----------Handle Functions---------
costfunc = @(x) objectivefunc(x);

%----------Load Fuzzy Inference System--
fPSO = readfis('FPSO.fis');

%----------Initialization-----------
%create a structure for each individual, contain: its position, its cost,
%its velocity, its personal best so far and cost of personal best 
empty_individual.position = [];
empty_individual.cost = [];
empty_individual.velocity = [];
empty_individual.personalbest.position = [];
empty_individual.personalbest.cost = [];

%global best individual
globalbest.position = [];
globalbest.cost = inf;

pop = repmat(empty_individual, npop, 1);

for i=1:npop
    pop(i).position = unifrnd(lbound, ubound, varsize);
    pop(i).cost = costfunc(pop(i).position); 
    pop(i).velocity = unifrnd(-1, 1, varsize);
    pop(i).personalbest.position = pop(i).position;
    pop(i).personalbest.cost = pop(i).cost;
    
    if pop(i).cost < globalbest.cost
        globalbest.position = pop(i).position;
        globalbest.cost = pop(i).cost;
    end %end if
end %end for i

%-----------Main Loop-------------------
itr = 1;
while (itr <= maxiter)
        minFit = inf;
        maxFit = -inf;
        for i = 1:npop
            %update position of each individual
            r1 = rand(varsize);
            r2 = rand(varsize);
            %obtain new velocity
            pop(i).velocity = consfactor*(pop(i).velocity ...
                              +c1*r1.*(pop(i).personalbest.position - pop(i).position) ...
                              +c2*r2.*(globalbest.position - pop(i).position));
            %velocity clamping
             pop(i).velocity = min(max(pop(i).velocity,-vmax),vmax);

            %update position of individual
            pop(i).position = pop(i).position + pop(i).velocity;
            pop(i).position = min(max(pop(i).position, lbound), ubound);
            pop(i).cost = costfunc(pop(i).position); 

            %update personal best and global best
            if pop(i).cost < pop(i).personalbest.cost
                pop(i).personalbest.position = pop(i).position; 
                pop(i).personalbest.cost = pop(i).cost;
                if pop(i).personalbest.cost < globalbest.cost
                    globalbest.position = pop(i).personalbest.position; 
                    globalbest.cost = pop(i).personalbest.cost;
                end %end if
            end %end if
            
            %determine minimum fittness and maximum fittness for set error
            %fro FIS
            if(pop(i).cost < minFit)
                minFit = pop(i).cost;
            elseif(pop(i).cost > maxFit)
                maxFit = pop(i).cost;
            end%end if
        end %end for i
        avgcost(itr) = sum([pop.cost]) / npop;
        bestcost(itr) = globalbest.cost;

        %set Iteration for FIS
        iteration = itr/maxiter;
        
        %determine normal diversity of the swarm for FIS
        maxDiver = -inf;
        minDiver = inf;
        for j=1:npop
             diver = sqrt((pop(j).position - globalbest.position).^2)/npop;
             if(diver > maxDiver)
                 maxDiver = diver;
             end
             if(diver < minDiver)
                 minDiver = diver;
             end
        end
        if(minDiver == maxDiver)
            diverNorm = 1;
        else
            diverNorm = (diver-minDiver)/(maxDiver-minDiver);
        end
       
        %determine normal Error for FIS
        for j=1:npop
            error = sqrt((pop(j).cost - globalbest.cost).^2)/npop;
        end        
        if(minFit == maxFit)
            errorNorm = 1;
        else
            errorNorm = (error-minFit)/(maxFit-minFit);
        end %end if
        
        %evaluate the output of FIS
        c = evalfis([iteration diverNorm], fPSO);
        c1 = c(1);
        c2 = c(2);
        c1(itr) = c1;
        c2(itr) = c2;
        
        itr = itr + 1;
end %end for itr
%------------Result-----------------------

%return outputs
x = globalbest.position;
fval = globalbest.cost;
iteration = itr;

%plot results
if nvar == 2
    subplot(1, 2, 1);
    hold on;
    [x, y] = meshgrid(lbound:1:ubound);
    z = (exp(-(((x./15).^10)+((y./15).^10))) - 2*exp(-((x.^2)+(y.^2)))).*((cos(x).^2).*(cos(y).^2));
    contour(x, y, z);
    colorbar;
    scatter(globalbest.position(1), globalbest.position(2), 'm*');    
    title({strcat('Best Solution:  ', num2str(globalbest.position)), strcat('Best Cost:  ', num2str(globalbest.cost))},... 
    'FontWeight','bold');
    subplot(1, 2, 2);
end
hold on;
if min(bestcost) > 0
    set(gca,'Yscale','log');     
end
plot(bestcost,'k*');
plot(avgcost, 'b-');
 plot(c1, 'r+');
 plot(c2, 'g+');
legend('Best Cost', 'Mean Costs');
xlabel('Iteration');
ylabel('Best Cost');
title({strcat('Best Solution:  ', num2str(globalbest.position)), strcat('Best Cost:  ', num2str(globalbest.cost))},... 
  'FontWeight','bold');
hold off
