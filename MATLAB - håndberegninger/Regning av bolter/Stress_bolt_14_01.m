clc; clear; close all;

%% Stress on bolts (plate for last)
% Beregninger uten å ha satt oss godt inn, følger 
% øving 8 på Maskinelementer

d = 12; %mm (12 mm)
L = 600; %mm (60 cm)
g = 9.81; %m/s^2
F = 350/2 *g; %N delt på to fordi det er en bolt på hver side


% Fra datablad
A_t = 84.27; %mm^2 Table 15-2
S_p = 600; %MPa Table 15-7
S_ut = 830; %MPa

%Antar preload 90% slik som i oppgaven
F_i = 0.9 * S_p * A_t;

%Er en sjekk men vet ikke helt hva det er

T = F*L; %Nmm

%Primery shear
A_b = pi*(12^2)/4; %mm^2
Tau_merket = F/A_b;

%Secondary shear
%Muligens ingen secondary shear fordi r_b er 0 grunnet bolten står i
%midten, men kanskje radius til bolten??
r_b = 12/2; %mm
I_p = A_b * r_b^2; %mm^4
Tau_dobbel_merket = (T * r_b) /I_p; %MPa

%Bending
