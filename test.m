% define inputs
  % density, rho, (kg/m^3)
  % thermal conductivity, k, (W/m^2*K)
  % specific heat capacity, c_p, (J/K*kg)
  % layer height, dz, (m)
  % time step, dt, (s)
  % layer_time (s)
  % convection coefficient, h_am, (W/m^2*K) and h_mb, (W/m^2*K)
  % max_layers, (#)
  % finish_time, (s)

rho = 7140;
k = 120;
c_p = 0.39;
dz = 0.0002;
dt = 1;
h_am = 113;
h_mb = 50;
max_layers = 6;
finish_time = 120;


%prompt = {'Density (kg/m^3):' , 'Thermal Conductivity (W/K*m^2):' ,...
%    'Specific heat capacity (J/K*kg):' , 'Layer height (mm):' , 'Time step (s):'...
%    'Air-Metal Convection coefficient (W/K*m^2):' ,...
%    'Metal-Base Convection coefficient (W/K*m^2):'};
%dlgtitle = 'Inputs';
%dims = [1 75];
%user_inputs = inputdlg(prompt , dlgtitle , dims);
  
% set up mesh
  % create an array of zeroes of columns max_layers and rows finish_time/dt

mesh = zeros(finish_time/dt,max_layers);

  
% solve problem
  % loop over time steps, j
    % solve PDE in current loop
    % Compute temperature field based on known equation and previous j
    % (j-1)
    % Assign solution to row j
% post process
  % surf(space, time, mesh)
  