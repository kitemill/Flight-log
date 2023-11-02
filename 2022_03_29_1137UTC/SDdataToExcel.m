clc,clear,
load('Meas_28_03_2022_third_flight.mat')
%% Extract data
Date = datetime(SD1_LOG00052_epoch_ms, 'ConvertFrom','epochtime','Epoch','1970-01-01','TicksPerSecond',1000)';
Time_sec = (0:time_step:(length(SD1_LOG00052_r_eb_eD)-1)*time_step)'./1000;

a_eb_bX = SD1_LOG00052_a_eb_bX';
a_eb_bY = SD1_LOG00052_a_eb_bY';
a_eb_bZ = SD1_LOG00052_a_eb_bZ';

v_eb_eD = SD1_LOG00052_v_eb_eD';
v_eb_eE = SD1_LOG00052_v_eb_eE';
v_eb_eN = SD1_LOG00052_v_eb_eN';

r_eb_eD = SD1_LOG00052_r_eb_eD';
r_eb_eE = SD1_LOG00052_r_eb_eE';
r_eb_eN = SD1_LOG00052_r_eb_eN';

phi = SD1_LOG00052_phi';
theta = SD1_LOG00052_theta';
psi = SD1_LOG00052_psi';

p = SD1_LOG00052_p';
q = SD1_LOG00052_q';
r = SD1_LOG00052_r';

flaps = SD1_LOG00052_flaps_sp';
camber = SD1_LOG00052_camber_sp';
aileron = SD1_LOG00052_aileron_sp';
elevator = SD1_LOG00052_elevator_sp';
rudder = SD1_LOG00052_rudder_sp';

v_a = SD1_LOG00052_v_a_calc';
tether_Load = SD1_LOG00052_LoadFiltered';

reel_out_speed = SD1_LOG00052_reel_out_speed';
tether_length = SD1_LOG00052_tether_length';

%%


T = table(Date,Time_sec,a_eb_bX,a_eb_bY,a_eb_bZ,v_eb_eD,v_eb_eE,v_eb_eN,...
    r_eb_eD,r_eb_eE,r_eb_eN,phi,theta,psi,p,q,r,flaps,camber,aileron,...
    rudder,v_a,tether_Load,reel_out_speed,tether_length);
writetable(T,'Measurement.xlsx');
