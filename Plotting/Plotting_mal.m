clear; close all; clc
N = 10000;
tmin = 0;
tmax = 10;
t = linspace(tmin,tmax,N)';

% Random functions for this example
y1 = 4*sin(t);
y2 = 4*1./t.*sin(t);

% Unformatted plot
figure
hold on
plot(t,y1,'r-')
plot(t,y2,'b-')
hold off
grid on
box on

% Define the label positions
xlabel_x = 5; % Example position for x-axis label
xlabel_y = -5; % Example position for x-axis label

ylabel_x = -5; % Example position for y-axis label
ylabel_y = 3; % Example position for y-axis label

% Set labels with position
label_x = xlabel('x-coordinate, [m]');
label_x.Units = "centimeters";
label_x.Position = [xlabel_x, xlabel_y];

label_y = ylabel('\alpha_{22}, [rad]');
label_y.Units = "centimeters";
label_y.Position = [ylabel_x, ylabel_y];

% Add legend
leg = legend('Test value 1', 'Test value 2');
leg.Location = "southeast";
