GT_t.LN_t.cwnm_CM51 										= {name = "CM-51 100mm"}
-- GT_t.LN_t.cwnm_CM51.angles_mech					= { {math.rad(180), math.rad(-180), math.rad(-5), math.rad(85),}, };
-- GT_t.LN_t.cwnm_CM51.angles							= { {math.rad(180), math.rad(-180), math.rad(-5), math.rad(85),}, };
GT_t.LN_t.cwnm_CM51.omegaY							= {math.rad(20)}
GT_t.LN_t.cwnm_CM51.omegaZ							= {math.rad(30)}
-- GT_t.LN_t.cwnm_CM51.pidY								= {p=300, i = 0.05, d = 10.0, inn = 1000}; -- Seems to cause it not to track at all with these values
-- GT_t.LN_t.cwnm_CM51.pidZ								= {p=300, i = 0.05, d = 10.0, inn = 1000}; --
GT_t.LN_t.cwnm_CM51.reference_angle_Z		= {math.rad(10)}
GT_t.LN_t.cwnm_CM51.LN									= {}
GT_t.LN_t.cwnm_CM51.LN[1]								= {}
GT_t.LN_t.cwnm_CM51.LN[1].type					= 2 -- was 3 - 11 should be a heavy AA gun, and gives an appropriate smoke effect.
GT_t.LN_t.cwnm_CM51.LN[1].distanceMin		= 100
GT_t.LN_t.cwnm_CM51.LN[1].distanceMax		= 21400
GT_t.LN_t.cwnm_CM51.LN[1].max_trg_alt		= 16000
GT_t.LN_t.cwnm_CM51.LN[1].reactionTime	= 3
GT_t.LN_t.cwnm_CM51.LN[1].sensor				= {}
set_recursive_metatable(GT_t.LN_t.cwnm_CM51.LN[1].sensor, GT_t.WSN_t[12]) -- What does this connect too? Seems its Sensor type 12 in the datamine.
GT_t.LN_t.cwnm_CM51.LN[1].PL						= {}
GT_t.LN_t.cwnm_CM51.LN[1].PL[1]					= {}
GT_t.LN_t.cwnm_CM51.LN[1].PL[1].ammo_capacity					= 320
GT_t.LN_t.cwnm_CM51.LN[1].PL[1].portionAmmoCapacity		= 320
GT_t.LN_t.cwnm_CM51.LN[1].PL[1].shell_name						= {"CWNM_ZS55"}
GT_t.LN_t.cwnm_CM51.LN[1].PL[1].shot_delay						= 4
GT_t.LN_t.cwnm_CM51.LN[1].PL[1].virtualStwID					= 1
GT_t.LN_t.cwnm_CM51.LN[1].automaticLoader							= false;
GT_t.LN_t.cwnm_CM51.LN[1].reload_time									= 900
GT_t.LN_t.cwnm_CM51.LN[1].BR						= { {pos = {5.3, 0, 0} } }


