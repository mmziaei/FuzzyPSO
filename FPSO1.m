function varargout = FPSO1(varargin)
% FPSO1 MATLAB code for FPSO1.fig
%      FPSO1, by itself, creates a new FPSO1 or raises the existing
%      singleton*.
%
%      H = FPSO1 returns the handle to a new FPSO1 or the handle to
%      the existing singleton*.
%
%      FPSO1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FPSO1.M with the given input arguments.
%
%      FPSO1('Property','Value',...) creates a new FPSO1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before FPSO1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to FPSO1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help FPSO1

% Last Modified by GUIDE v2.5 01-Feb-2015 04:29:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @FPSO1_OpeningFcn, ...
                   'gui_OutputFcn',  @FPSO1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before FPSO1 is made visible.
function FPSO1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to FPSO1 (see VARARGIN)

% Choose default command line output for FPSO1
handles.output = hObject;
%  handles.current_data = 'FPSO.fis';
% handles.FPSO1 = 'FPSO.fis';
% handles.FPSO2 = 'FPSO2.fis';
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes FPSO1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = FPSO1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function NUMP_Callback(hObject, eventdata, handles)
% hObject    handle to NUMP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NUMP as text
%        str2double(get(hObject,'String')) returns contents of NUMP as a double


% --- Executes during object creation, after setting all properties.
function NUMP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NUMP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C2_Callback(hObject, eventdata, handles)
% hObject    handle to C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C2 as text
%        str2double(get(hObject,'String')) returns contents of C2 as a double


% --- Executes during object creation, after setting all properties.
function C2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C1_Callback(hObject, eventdata, handles)
% hObject    handle to C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C1 as text
%        str2double(get(hObject,'String')) returns contents of C1 as a double


% --- Executes during object creation, after setting all properties.
function C1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CONSTF_Callback(hObject, eventdata, handles)
% hObject    handle to CONSTF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CONSTF as text
%        str2double(get(hObject,'String')) returns contents of CONSTF as a double


% --- Executes during object creation, after setting all properties.
function CONSTF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CONSTF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NUMV_Callback(hObject, eventdata, handles)
% hObject    handle to NUMV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NUMV as text
%        str2double(get(hObject,'String')) returns contents of NUMV as a double


% --- Executes during object creation, after setting all properties.
function NUMV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NUMV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LBOUND_Callback(hObject, eventdata, handles)
% hObject    handle to LBOUND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LBOUND as text
%        str2double(get(hObject,'String')) returns contents of LBOUND as a double


% --- Executes during object creation, after setting all properties.
function LBOUND_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LBOUND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function UBOUND_Callback(hObject, eventdata, handles)
% hObject    handle to UBOUND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of UBOUND as text
%        str2double(get(hObject,'String')) returns contents of UBOUND as a double


% --- Executes during object creation, after setting all properties.
function UBOUND_CreateFcn(hObject, eventdata, handles)
% hObject    handle to UBOUND (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function IT_Callback(hObject, eventdata, handles)
% hObject    handle to IT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of IT as text
%        str2double(get(hObject,'String')) returns contents of IT as a double


% --- Executes during object creation, after setting all properties.
function IT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Determine the selected data set.
% Determine the selected data set.
% Determine the selected data set.
% str = get(hObject, 'String');
% val = get(hObject,'Value');
% % Set current data to the selected data set.
% 
% % Save the handles structure.
% guidata(hObject,handles)
% % Save the handles structure.
% guidata(hObject,handles)



% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 

  
guidata(hObject, handles);

maxiteration = str2num(get(handles.IT,'string'));
numpopulation = str2num(get(handles.NUMP,'string'));
c1 = str2num(get(handles.C1,'string'));
c2 = str2num(get(handles.C2,'string'));
constrictionfactor = str2num(get(handles.CONSTF,'string'));
numvar = str2num(get(handles.NUMV,'string'));
lbound = str2num(get(handles.LBOUND,'string'));
ubound = str2num(get(handles.UBOUND,'string'));
% FPSO_type = get(handles.current_data,'string');
 
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

 
popupmenu1value = get(handles.popupmenu1,'Value');
  switch popupmenu1value
      case 1
fPSO = readfis('FPSO.fis');
      case 2
     
fPSO = readfis('FPSO2.fis');
  end
% fPSO = readfis(FPSO_type);

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
popupmenu1value = get(handles.popupmenu1,'Value');
  switch popupmenu1value
      case 1
        c = evalfis([iteration diverNorm], fPSO);
        c1 = c(1);
        c2 = c(2);;
      case 2
     
        c = evalfis([iteration diverNorm errorNorm], fPSO);
        c1 = c(1);
        c2 = c(2);
  end

        
        itr = itr + 1;
end %end for itr
%------------Result-----------------------

%return outputs
x = globalbest.position;
fval = globalbest.cost;
iteration = itr;

%plot results
% if nvar == 2
%     subplot(1, 2, 1);
%     hold on;
%     [x, y] = meshgrid(lbound:1:ubound);
%     z = (exp(-(((x./15).^10)+((y./15).^10))) - 2*exp(-((x.^2)+(y.^2)))).*((cos(x).^2).*(cos(y).^2));
%     contour(x, y, z);
%     colorbar;
%     scatter(globalbest.position(1), globalbest.position(2), 'm*');    
%     title({strcat('Best Solution:  ', num2str(globalbest.position)), strcat('Best Cost:  ', num2str(globalbest.cost))},... 
%     'FontWeight','bold');
%     subplot(1, 2, 2);
% end
hold on;
if min(bestcost) > 0
    set(gca,'Yscale','log');     
end
plot(bestcost,'k*');
plot(avgcost, 'b-');
legend('Best Cost', 'Mean Costs');
xlabel('Iteration');
ylabel('Best Cost');
title({strcat('Best Solution:  ', num2str(globalbest.position)), strcat('Best Cost:  ', num2str(globalbest.cost))},... 
  'FontWeight','bold');
hold off
