# Kitemill Flight Logs

This repository contains data logged onboard Kitemill's Prototype KM1 kite on two occasions.

- 2022 week 17, flight 03 on thursday, 460 production loops in high winds
- 2022 week 19, flight 02 on wednesday, 480 production loops in low winds

The data is given as CSV files for the kite and the nearby Lista Fyr Lighthouse
public weather station. Not the distance to Lista Fyr to the Kitemill site is
considerable, and the altitude at the lighthouse is not matched to pattern
height of the flight.

The CSV files for the kite contains the following columns

- epoch_ms: the unix time stamp synchronized to GPS time
- intern_time: the internal clock of the kite
- a_eb_bX: acceleration in body frame
- a_eb_bY: acceleration in body frame 
- a_eb_bZ: acceleration in body frame 
- v_eb_eD: velocity in NED frame
- v_eb_eE: velocity in NED frame
- v_eb_eN: velocity in NED frame
- r_eb_eD: position in NED frame
- r_eb_eE: position in NED frame
- r_eb_eN: position in NED frame
- phi: roll angle in degrees
- theta: pitch angle in degrees
- psi: yaw angle in degrees
- p: roll rate in deg/s
- q: pitch rate in deg/s
- r: yaw rate in deg/s
- flaps_sp: flap controller setpoint in degrees [inner flaps only]
- camber_sp: camber controller setpoint in degrees [all flaps on the wing
  common angle]
- aileron_sp: aileron controller setpoint in degrees [flaps move this much up
  and half as much down, positive aileron should give positive rotation around
  the X-axis]
- rudder_sp: rudder constroller setpoint [positive for positive rotation around
  Z-axis]
- V_a: pitot tube airspeed measurement in m/s
- LoadFiltered: load sensor on the tether at the kite, in kgf
- reel_out_speed: setpoint winch reel out speed in m/s
- tether_length: estimated tether total length based on counting drum
  revolutions in m


The body coordinate system of the kite is forward X-Axis, right wing direction
Y-Axis, down Z-Axis. Rotation is positive according to the right hand 
rule.

