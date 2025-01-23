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

%Materiale
E_material = 1; 
E_bolt = 1;

%C for utregning av bending
p_0 = 0.4389;
p_1 = -0.9197;
p_2 = 0.8901;
p_3 = -0.3187;

j = d/l_b;
radio_r = E_material/E_bolt; % 1 delt på 1 pga stål mot stå

C_r = p_3*radio_r^3 + p_2*radio_r^2 + p_1*radio_r + p_0;


%Avstand til hull
h_hull = h/2; %mm
r_i = 39/2; %mm
Bredde_hullplate = 85; %mm
Bredde_senter_hullplate = Bredde_hullplate/2; %mm
dybde = sind(30) * Bredde_senter_hullplate; %mm

% Fra datablad
% A_t = 84.27; %mm^2 Table 15-2
A_t = 36.61; %mm^2 Table 15-2
A_t = 20.12; %mm^2 Table 15-2
S_p = 600; %MPa Table 15-7
S_ut = 830; %MPa
%Antar preload 90% slik som i oppgaven kan spørre om dette er riktig
F_i = 0.75 * S_p * A_t;

%% Skjekker antall bolter (må dette gjøres?)
N_b = 4;
%bolt_skjekk = (pi*D_b)/(N_b*d);

Vbolt = F/N_b

Ffrik = F_i*0.15

% %% Venstre side
% L_v = 500; %mm
% F_v = F; %N
% T_v = F_v*L_v; %Nmm
% 
% % Primary shear 
% Tau_merket = (F_v/2)/A_b;  %MPa
% Tau_merket_1 = Tau_merket; %MPa
% Tau_merket_2 = Tau_merket; %MPa

% %Secundary shear
% I_p = N_b * A_b * r_i^2; %mm^4
% 
% Tau_dobbel_merket = T_v * r_i/I_p;
% Tau_dobbel_merket_1 = Tau_dobbel_merket;
% Tau_dobbel_merket_2 = Tau_dobbel_merket;
% Tau_dobbel_merket_3 = Tau_dobbel_merket;
% Tau_dobbel_merket_4 = Tau_dobbel_merket;
% 
% %Total
% Tau_1_total_x = 0; 
% Tau_1_total_y = -Tau_merket_1 - Tau_dobbel_merket_1;
% Tau_1_total = sqrt(Tau_1_total_x^2 + Tau_1_total_y^2)
% 
% Tau_2_total_x = 0; 
% Tau_2_total_y = -Tau_merket_2 + Tau_dobbel_merket_2;
% Tau_2_total = sqrt(Tau_2_total_x^2 + Tau_2_total_y^2)
% 
% %Bending
% M = F_v * dybde;
% 
% sum_Ab_h2 = 2*A_b * h_hull^2;
% 
% Fb_k = C_r * A_b * (M*h_hull)/(sum_Ab_h2) + F_i;
% 
% sigma_bolt = Fb_k / A_t
% 
% VMS_v1 = sqrt(sigma_bolt^2 + 3*Tau_1_total)
% VMS_v2 = sqrt(sigma_bolt^2 + 3*Tau_2_total)
% 
% %% Høyre side
% L_h = 300; %mm
% F_h = F; %N
% T_h = F_h*L_h; %Nmm
% 
% % Primary shear 
% 
% %Secundary shear
% 
% %Bending
