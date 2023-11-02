# Flight-log
- KM1 model Definitions:
  + XYZ kite body coordinate system (origin at kite center of gravity):
    X-axis: Pointing from the kite's center of gravity toward the kite's nose.
    Y-axis: Pointing from the kite's center of gravity toward the kite's right side (starboard).
    Z-axis: Form a right-hand coordinate frame with an XY-axis (pointing down from the kite body).
    
  + NED North, East, Down local navigation coordinate system (origin at winch drum):
    N-axis: Pointing from the winch drum toward the north.
    E-axis: Pointing from the winch drum toward the East.
    D-axis: Form a right-hand coordinate frame with a NE-axis (pointing down toward the earth).

- Acronym:
  a_eb_bX: Kite body acceleration along the kite X-axis [meter per second square].
  a_eb_bY: Kite body acceleration along the kite X-axis [meter per second square].
  a_eb_bZ: Kite body acceleration along the kite X-axis [meter per second square].

  v_eb_eN: Kite body velocity in navigation frame the N-axis [meter per second].
  v_eb_eE: Kite body velocity in navigation frame the E-axis [meter per second].
  v_eb_eD: Kite body velocity in navigation frame the D-axis [meter per second].

  r_eb_eN: Kite position in navigation frame the N-axis [meters].
  r_eb_eE: Kite position in navigation frame the E-axis [meters].
  r_eb_eD: Kite position in navigation frame the D-axis [meters].

phi: Kite roll angle [degree].
theta: Kite pitch angle [degree].
psi: Kite yaw angle [degree].

p = SD1_LOG00084_p';
q = SD1_LOG00084_q';
r = SD1_LOG00084_r';

flaps = SD1_LOG00084_flaps_sp';
camber = SD1_LOG00084_camber_sp';
aileron = SD1_LOG00084_aileron_sp';
elevator = SD1_LOG00084_elevator_sp';
rudder = SD1_LOG00084_rudder_sp';

v_a = SD1_LOG00084_v_a_calc';
tether_Load = SD1_LOG00084_LoadFiltered';

reel_out_speed = SD1_LOG00084_reel_out_speed';
tether_length = SD1_LOG00084_tether_length';
