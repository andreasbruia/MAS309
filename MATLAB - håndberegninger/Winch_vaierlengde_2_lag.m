clc; clear; close all;

% Beregning av lenge for winch-vaier

Omkrets_trommel = 0.48; %m
Diameter_trommel = Omkrets_trommel/pi; %m



% Konstanter
Kran_hoyde = 4.9; %m
Topplengde = 2; %m

Diameter_1_lag = Diameter_trommel + 2 * 0.003; %m
Diameter_2_lag = Diameter_1_lag + 4 * 0.003; %m

Antall_viklinger_per_runde = 41; %runder
%dimenesjon_vaier = 6; mm tykk


lengde_1_lag = pi * Diameter_1_lag * Antall_viklinger_per_runde; %m
lengde_2_lag = pi * Diameter_2_lag * Antall_viklinger_per_runde; %m

lengde_drift = 2 * Kran_hoyde + Topplengde; %m