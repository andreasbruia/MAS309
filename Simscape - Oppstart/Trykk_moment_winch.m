clc;
m = 250; %kg
g = 9.81; %m/s^2
r = 0.1588/2; %m
D = 180*10^(-6); %m^3

delta_p = (m*g*r*2*pi)/D
p_bar = delta_p * 10^(-5)

trykk = 70*10^5;
Masse = (D*trykk)/(2*pi*g*r)


