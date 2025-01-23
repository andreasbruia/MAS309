%% Stress on bolts (plate for last)
clc; clear; close all;
% Beregninger etter å ha jobbet en del med det, følger 
% øving 8 på Maskinelementer
%Bunnplatn og bjelkene er laget

m = 350+66; %kg
g = 9.81; %m/s^2

%Felles
F = m*g; %Prøver å ikke fordele den, deretter dele på to
h = 63; %mm

%Bolt
d = 12; %mm
A_b = pi/4 * (d)^2; %mm^2
l_b = 140; %mm dette tallet ble bare satt må nok endres


% Fra datablad
% A_t = 84.27; %mm^2 Table 15-2 12mm
A_t = 36.61; %mm^2 Table 15-2 8mm
%A_t = 20.12; %mm^2 Table 15-2 6mm
S_p = 600; %MPa Table 15-7
S_ut = 830; %MPa
%Antar preload 90% slik som i oppgaven kan spørre om dette er riktig
F_i = 0.75 * S_p * A_t;

%% Skjekker antall bolter (må dette gjøres?)
N_b = 4;
%bolt_skjekk = (pi*D_b)/(N_b*d);

Vbolt = F/N_b

Ffrik = F_i*0.15
