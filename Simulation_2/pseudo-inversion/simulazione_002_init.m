clear;
close all;

%{
%SU Ysin-Zcos ---> OTTIMI RISULTATI
frequency = 0.2;
radius = 0.3;
motion_time = 5;
gain = 25 * eye(6);
q_init = [pi/9; -pi/3; 2*pi/7; -pi/2; pi/4; pi/7];
%}

%{
%SU Xcos-Ysin ---> GRAFICI PERFETTI. VELOCITA NON BASSE CHE ARRIVANO VICINE
%AL LIMITE DI SAT. MA OTTIMI RISULTATI
frequency = 0.5;
radius = 0.1;
motion_time = 4;
gain = 30 * eye(6);
q_init = [pi/9; -pi/3; 2*pi/7; -pi/2; pi/4; pi/7];
%}

%{
%SU Xcos-Ysin ---> DIMINUENDO LA FREQUENZA NONOSTANTE L'AMPIO RAGGIO NON
%SATURO LE VELOCITA. IL RAGGIO ECCESSIVO COMUNQUE NON PORTA IN LIMITI
%MECCANICI
frequency = 0.1;
radius = 0.6;
motion_time = 5;
gain = 1 * eye(6);
q_init = [pi/2; -pi/3; -pi/9; pi/6; -pi/6; 0];
%}



%su Ysin-Zcos ---> MOSTRA SATURAZIONI MA ERRORE NULLO
frequency = 0.2;
radius = 0.15;
motion_time = 5;
gain = 30 * eye(6);
q_init = [pi/2; -pi/3; -pi/9; pi/6; -pi/6; 0];
%}

%{
%su Xcos-Ysin
frequency = 0.5;
radius = 0.3;
motion_time = 4;
gain = 30 * eye(6);
q_init = [0; 0; 0; -pi/2; 0; 0];
%}

ref_pulse = 2 * pi * frequency;

movement_upper_limit = [2*pi; 2*pi; 2*pi; 2*pi; 2*pi; 2*pi];
movement_lower_limit = -movement_upper_limit;
velocity_upper_limit = [2*pi/3; 2*pi/3; pi; pi; pi; pi];
velocity_lower_limit = -velocity_upper_limit;

t_exe = motion_time;       
t_sim = motion_time;
step = 0.001;

p_init = direct_kinematic(q_init);
display(p_init);
