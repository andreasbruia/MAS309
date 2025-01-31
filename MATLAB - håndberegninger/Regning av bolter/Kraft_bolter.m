%% Stress on bolts (plate for last)
clc; clear; close all;
% Beregninger etter å ha jobbet en del med det, følger 
% øving 8 på Maskinelementer
%Bunnplaten og bjelkene er laget


m = 350+66; %kg
g = 9.81; %m/s^2

%Kraft 
F = m*g; %Prøver å ikke fordele den, deretter dele på to

%Bolt
d = 8; %mm
A_b = pi/4 * (d)^2; %mm^2


% Fra datablad
% A_t = 84.27; %mm^2 Table 15-2 12mm
A_t = 36.61; %mm^2 Table 15-2 8mm
%A_t = 20.12; %mm^2 Table 15-2 6mm
S_p = 600; %MPa Table 15-7
S_ut = 830; %MPa
%Antar preload 75%
F_i = 0.75 * S_p * A_t;

%% Kraft fra last og plate fordelt på boltene
%Antall bolter som holder bjelken
N_b = 8;

%Kraften som virker på boltene
Vbolt = F/N_b

%Friksjonskoeffisient
my = 0.15; %stål mot stål - Jon Haugan
%Friksjonskraft fra hver bolt
Ffrik = F_i*my

Sikkerhetsfaktor = Ffrik/Vbolt

