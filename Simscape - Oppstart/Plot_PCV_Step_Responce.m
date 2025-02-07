close all; clear; clc;
%Sjekke om rett workspace
load("Step_transferfunksjon.mat")

Graf1 = load("Step_responce_100.mat");
y1 = Graf1.StepResponce.signals.values(:);

Graf2 = load("Step_responce_75.mat");
y2 = Graf2.StepResponce.signals.values(:);

Graf3 = load("Step_responce_50.mat");
y3 = Graf3.StepResponce.signals.values(:);

Graf3 = load("Step_responce_25.mat");
y4 = Graf4.StepResponce.signals.values(:);


x1 = (Graf1.StepResponce.time)*1;
x2 = (Graf2.StepResponce.time)*1;
x3 = (Graf3.StepResponce.time)*1;
x4 = (Graf4.StepResponce.time)*1;

figure
%yyaxis left
plot(x1,y1, LineWidth=2)
axis ([0 5 -6 12])
grid on
hold on
ylabel('Stroke [%]')
%yyaxis right
plot(x2,y2, LineWidth=2)
axis ([0 5 -6 12])
% hold off
% xlim([5,55])
% ylim([-3.5,1])
plot(x3,y3, LineWidth=2)
axis ([0 5 -6 12])

plot(x4,y4,LineWidth=2)
axis ([0 5 -6 12])

xlabel('Time [s]')
ylabel('Stroke [%]')
title('SP = pi')
legend('100%', '75%', '50%')
