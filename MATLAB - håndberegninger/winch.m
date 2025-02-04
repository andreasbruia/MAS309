clc; clear; close all;

% Beregning av lenge for winch-vaier

% Konstanter
Kran_hoyde = 4.9; %m
Topplengde = 2; %m

Diameter_trommel = 0.1312; %cm
Minumum_viklinger = 8; %minimum antall viklinger igjen på trommelen KAN ENDRES!!!!!!!!!!!!!!!!!!!!!SPØRR

Antall_viklinger_per_runde = 41; %runder
%dimenesjon_vaier = 6; mm tykk

% Beregninger varierlengder
lengde_minimumsviklinger = pi*Diameter_trommel*Minumum_viklinger;
lengde_vertikalt = 2* Kran_hoyde;
lengde_horisontalt = Topplengde;



%Total lengde
Vaierlengde = lengde_minimumsviklinger + lengde_vertikalt + lengde_horisontalt



%nåværende vaierlengde
vairerlengde_naa = pi*Diameter_trommel*Antall_viklinger_per_runde


