-- Ship template by Joey45 edit as you see fit 
-- Sverdlov-Class Cruiser by dotbmp, Des, and TeTet

GT = {};
-- dofile(current_mod_path..'/scripts/ShipnameRunwaysAndRoutes.lua') -- the runways and taxiway lua file
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship) -- all ships have this

GT.visual = {}
GT.visual.shape = "cwnm_soviet_sverdlov"  -- name of LODs lua
GT.visual.shape_dstr = "" -- if there is a destruction model it goes here

GT.life = 4200; -- hit points
GT.mass = 13600000; -- KGs
GT.max_velocity = 16.82 --M/S
GT.race_velocity = 12.1 --M/S
GT.economy_velocity = 8.7 --M/S 
GT.economy_distance = 10556.4 -- KM
GT.race_distance = 10556.4
GT.shipLength = 210 -- o.a in meters
GT.Width = 21.99 --15 --meters
GT.Height = 22 --335.226 from sea level I think
GT.draft = 7.38
GT.Length = 210 -- deck length I think
GT.DeckLevel = 6.154 -- height of deck
GT.X_nose = 102.547 -- bow wave
GT.X_tail = -95.95 -- wake
GT.Tail_Width = 5.24524 --wake width
GT.Gamma_max = 0.35 -- no idea
GT.Om = 0.02 --no idea
GT.speedup = 0.229734; --time it takes to accelerate
GT.R_min = 365.8 -- turn radius

GT.RCS = 90000 -- new in 2.7 ----estimated RCS in square meters
GT.IR_emission_coeff = 0.9 -- new in 2.7 not sure the params


-- GT.TACAN		   = false;		--If it has TACAN say true if not say false or not have this entry

-- GT.ICLS = false; -- IF it has ICLS say true if not say false or not have this entry

GT.distFindObstacles = 462.5


GT.numParking = 0 -- runways
GT.Plane_Num_ = 0 --number of planes, not sure if it matters in game
GT.Helicopter_Num_ = 0 -- Number heli spawns

-- the new LOS stuff is still new to me but this is what I have found out by looking through the lua files

--LSO view          high quality edm file, whatever you named the connector , Visiblity arg   , Position of camera

-- smoke density and position
GT.exhaust = {
	[1] = { size = 0.60, pos = {-11.05, 19.70, 0}},
	[2] = { size = 0.60, pos = {20.12, 21.82, 0}}
	-- [1] = { size = 0.60 , pos = {-8.0, 17.0, 2.914 } },
	-- [2] = { size = 0.60 , pos = {-8.0, 17.0, -3.158 } },
}

--GT.animation_arguments.radar1_rotation = 7; -- Radar 1 Rotation main radar
--GT.radar1_period = 5; --speed

--GT.animation_arguments.radar2_rotation = 2; -- Radar 2 Rotation secondary radars
--GT.radar1_period = 5; --speed

--GT.animation_arguments.radar3_rotation = 3; -- navigation radar
--GT.radar1_period = 5; --speed

GT.animation_arguments = {
	water_propeller = 1,
	nav_lights = 10, -- navigation lights 
}
-- GT.animation_arguments = {
-- 	water_propeller = 6,
-- 	radar1_rotation = 7,
-- 	radar2_rotation = 8
-- }
-- GT.radar1_period = 5; --speed
-- GT.radar2_period = 180; 

--Damage Model
-- GT.DM = {
--     { area_name = "Ship", 				area_arg = 70, area_life = 150 },
-- }


GT.airWeaponDist = 15000  -- Max engagement range air threats (meters)
GT.airFindDist = 28000 -- Max detenction range air threats (meters)

--Radar info
GT.WS = {}
GT.WS.maxTargetDetectionRange = 25000; --450000
GT.WS.radar_type = 109 --104= Short range, 103 = Mid range at a guess 102 = Long range
GT.WS.searchRadarMaxElevation = math.rad(60);


local ws;




-------------------------------------------------------------------------
-- Ship Turrets
--####################################################################################
--###      Turret A - Twin 4.5in (115mm) Mk 6 Mount Naval Cannon AA/AS             ###
--####################################################################################
-- Converted to a triple cannon

-- Turret 1 - Should be a Triple 152mm Cannon
--GT.WS[8] -- Current Hill based code
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Turret1_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
	{math.rad(120), math.rad(-120), math.rad(-3), math.rad(12)},
                    };
GT.WS[ws].drawArgument1                 = 30;
GT.WS[ws].drawArgument2                 = 31;
GT.WS[ws].reference_angle_Z = math.rad(6);

--GT.WS[8].LN[1] -- 152mm Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_B38);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name                  = 'Turret1_Barrel_1',
		recoilArgument                  = 32,
		recoilTime       								= 0.6,
	},
	{
		connector_name                  = 'Turret1_Barrel_2',
		recoilArgument                  = 33,
		recoilTime       								= 0.6,
	},
	{
		connector_name                  = 'Turret1_Barrel_3',
		recoilArgument                  = 34,
		recoilTime       								= 0.6,
	}
	} 

-- Turret 2 - Should be a Triple 152mm Cannon
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Turret2_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
	{math.rad(120), math.rad(-120), math.rad(-3), math.rad(12)},
                    };
GT.WS[ws].drawArgument1                 = 40;
GT.WS[ws].drawArgument2                 = 41;
GT.WS[ws].reference_angle_Z = math.rad(6);

--GT.WS[8].LN[1] -- 152mm Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_B38);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name                  = 'Turret2_Barrel_1',
		recoilArgument                  = 42,
		recoilTime       								= 0.6,
	},
	{
		connector_name                  = 'Turret2_Barrel_2',
		recoilArgument                  = 43,
		recoilTime       								= 0.6,
	},
	{
		connector_name                  = 'Turret2_Barrel_3',
		recoilArgument                  = 44,
		recoilTime       								= 0.6,
	}
	} 

-- Turret 3 - Should be a Triple 152mm Cannon
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Turret3_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
	{math.rad(-60), math.rad(60), math.rad(-5), math.rad(12)},
                    };
GT.WS[ws].drawArgument1                 = 50;
GT.WS[ws].drawArgument2                 = 51;
GT.WS[ws].reference_angle_Z = math.rad(6);
GT.WS[ws].reference_angle_Y = math.rad(180) -- facing rearward

--GT.WS[8].LN[1] -- 152mm Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_B38);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name                  = 'Turret3_Barrel_1',
		recoilArgument                  = 52,
		recoilTime       								= 0.6,
	},
	{
		connector_name                  = 'Turret3_Barrel_2',
		recoilArgument                  = 53,
		recoilTime       								= 0.6,
	},
	{
		connector_name                  = 'Turret3_Barrel_3',
		recoilArgument                  = 54,
		recoilTime       								= 0.6,
	}
	} 

-- Turret 4 - Should be a Triple 152mm Cannon
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Turret4_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
	{math.rad(-60), math.rad(60), math.rad(-5), math.rad(12)},
                    };
GT.WS[ws].drawArgument1                 = 60;
GT.WS[ws].drawArgument2                 = 61;
GT.WS[ws].reference_angle_Z = math.rad(6);
GT.WS[ws].reference_angle_Y = math.rad(180) -- facing rearward

--GT.WS[8].LN[1] -- 152mm Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_B38);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name                  = 'Turret4_Barrel_1',
		recoilArgument                  = 62,
		recoilTime       								= 0.6,
	},
	{
		connector_name                  = 'Turret4_Barrel_2',
		recoilArgument                  = 63,
		recoilTime       								= 0.6,
	},
	{
		connector_name                  = 'Turret4_Barrel_3',
		recoilArgument                  = 64,
		recoilTime       								= 0.6,
	}
	} 



-- 100mm/KS-19s 6x Anti-Air/Anti-Ship Guns - Should be Radar/optically guided
-- Starboard Front Gun 100mm
-- ws																			= GT_t.inc_ws();
-- GT.WS[ws]																= {};
-- set_recursive_metatable(GT.WS[ws], GT_t.LN_t.cwnm_CM51 );
-- -- GT.WS[ws].area													= -- TODO add damage model
-- GT.WS[ws].center												= 'Sb_100mm_Turret1_Center';
-- GT.WS[ws].drawArgument1									= 301;
-- GT.WS[ws].drawArgument2									= 101;
-- GT.WS[ws].angles												= {
-- 	{math.rad(-38), math.rad(-135), math.rad(-7.5), math.rad(85)}, -- TODO Needs updating
-- }
-- -- GT.WS[ws].angles_mech = {
-- -- 	{math.rad(-38), math.rad(-135), math.rad(-8), math.rad(85)}, -- TODO Needs updating
-- -- }
-- GT.WS[ws].reference_angle_Z							= math.rad(20);
-- GT.WS[ws].reference_angle_Y 						= math.rad(-60);
-- GT.WS[ws].LN[1].BR											= {
-- 	{
-- 		connector_name = 'Sb_100mm_Turret1_Barrel_1',
-- 		recoilArgument = 104,
-- 		recoilTime		 = 0.3
-- 	},
-- 	{
-- 		connector_name = 'Sb_100mm_Turret1_Barrel_2',
-- 		recoilArgument = 105,
-- 		recoilTime		 = 0.3
-- 	}
-- }
--GT.WS[8] -- Current Hill based code
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Sb_100mm_Turret1_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
	{math.rad(-38), math.rad(-135), math.rad(-7.5), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 301
GT.WS[ws].drawArgument2 = 101
GT.WS[ws].reference_angle_Z = math.rad(20);
GT.WS[ws].reference_angle_Y = math.rad(-60);

--GT.WS[8].LN[1] -- Anti Air Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51_Air);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name = 'Sb_100mm_Turret1_Barrel_1',
		recoilArgument = 104,
		recoilTime		 = 0.3
	},
	{
		connector_name = 'Sb_100mm_Turret1_Barrel_2',
		recoilArgument = 105,
		recoilTime		 = 0.3
	}
	} 

--GT.WS[8].LN[2] -- Allows for A/G Shooting
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51);
__LN.BR = {{
	connector_name = 'Sb_100mm_Turret1_Barrel_1',
	recoilArgument = 104,
	recoilTime		 = 0.3
},
{
	connector_name = 'Sb_100mm_Turret1_Barrel_2',
	recoilArgument = 105,
	recoilTime		 = 0.3
}} 
__LN.customViewPoint = { "genericHowitzer", {-6.0, 1.0, 0.0}, }	
-- END OF GUN


-- Starboard Middle Gun 100mm
-- Based on KS19 for speed etc, needs updating
-- ws																			= GT_t.inc_ws();
-- GT.WS[ws]																= {};
-- set_recursive_metatable(GT.WS[ws], GT_t.LN_t.cwnm_CM51 );
-- -- GT.WS[ws].area													= -- TODO add damage model
-- GT.WS[ws].center												= 'Sb_100mm_Turret2_Center';
-- GT.WS[ws].drawArgument1									= 302;
-- GT.WS[ws].drawArgument2									= 102;
-- GT.WS[ws].angles												= {
-- 	{math.rad(-35), math.rad(-135), math.rad(-7.5), math.rad(85)}, -- TODO Needs updating
-- }
-- GT.WS[ws].reference_angle_Z							= math.rad(20);
-- GT.WS[ws].reference_angle_Y 						= math.rad(-90);
-- GT.WS[ws].LN[1].BR											= {
	-- {
	-- 	connector_name = 'Sb_100mm_Turret2_Barrel_1',
	-- 	recoilArgument = 106,
	-- 	recoilTime		 = 0.3
	-- },
	-- {
	-- 	connector_name = 'Sb_100mm_Turret2_Barrel_2',
	-- 	recoilArgument = 107,
	-- 	recoilTime		 = 0.3
	-- }
-- }
--GT.WS[8] -- Current Hill based code
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Sb_100mm_Turret2_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
									{math.rad(-35), math.rad(-135), math.rad(-7.5), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 302
GT.WS[ws].drawArgument2 = 102
GT.WS[ws].reference_angle_Z = math.rad(20);
	GT.WS[ws].reference_angle_Y = math.rad(-90);

--GT.WS[8].LN[1] -- Anti Air Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51_Air);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name = 'Sb_100mm_Turret2_Barrel_1',
		recoilArgument = 106,
		recoilTime		 = 0.3
	},
	{
		connector_name = 'Sb_100mm_Turret2_Barrel_2',
		recoilArgument = 107,
		recoilTime		 = 0.3
	}
	} 

--GT.WS[8].LN[2] -- Allows for A/G Shooting
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51);
__LN.BR = {{
	connector_name = 'Sb_100mm_Turret2_Barrel_1',
	recoilArgument = 106,
	recoilTime		 = 0.3
},
{
	connector_name = 'Sb_100mm_Turret2_Barrel_2',
	recoilArgument = 107,
	recoilTime		 = 0.3
}} 
__LN.customViewPoint = { "genericHowitzer", {-6.0, 1.0, 0.0}, }	
-- END OF GUN

-- Starboard Rear Gun 100mm
-- ws																			= GT_t.inc_ws();
-- GT.WS[ws]																= {};
-- set_recursive_metatable(GT.WS[ws], GT_t.LN_t.cwnm_CM51 );
-- -- GT.WS[ws].area													= -- TODO add damage model
-- GT.WS[ws].center												= 'Sb_100mm_Turret3_Center';
-- GT.WS[ws].drawArgument1									= 303;
-- GT.WS[ws].drawArgument2									= 103;
-- GT.WS[ws].angles												= {
-- 	{math.rad(-35), math.rad(-135), math.rad(-7.5), math.rad(85)}, -- TODO Needs updating
-- }
-- -- GT.WS[ws].angles_mech = {
-- -- 	{math.rad(-35), math.rad(-135), math.rad(-5), math.rad(90)}, -- TODO Needs updating
-- -- }
-- GT.WS[ws].reference_angle_Z							= math.rad(20);
-- GT.WS[ws].reference_angle_Y 						= math.rad(-120);
-- GT.WS[ws].LN[1].BR											= {
	-- {
	-- 	connector_name = 'Sb_100mm_Turret3_Barrel_1',
	-- 	recoilArgument = 108,
	-- 	recoilTime		 = 0.3
	-- },
	-- {
	-- 	connector_name = 'Sb_100mm_Turret3_Barrel_2',
	-- 	recoilArgument = 109,
	-- 	recoilTime		 = 0.3
	-- }
-- }
--GT.WS[8] -- Current Hill based code
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Sb_100mm_Turret3_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
									{math.rad(-35), math.rad(-135), math.rad(-7.5), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 303
GT.WS[ws].drawArgument2 = 103
GT.WS[ws].reference_angle_Z = math.rad(20);
GT.WS[ws].reference_angle_Y = math.rad(-120);

--GT.WS[8].LN[1] -- Anti Air Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51_Air);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name = 'Sb_100mm_Turret3_Barrel_1',
		recoilArgument = 108,
		recoilTime		 = 0.3
	},
	{
		connector_name = 'Sb_100mm_Turret3_Barrel_2',
		recoilArgument = 109,
		recoilTime		 = 0.3
	}
	} 

--GT.WS[8].LN[2] -- Allows for A/G Shooting
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51);
__LN.BR = {{
	connector_name = 'Sb_100mm_Turret3_Barrel_1',
	recoilArgument = 108,
	recoilTime		 = 0.3
},
{
	connector_name = 'Sb_100mm_Turret3_Barrel_2',
	recoilArgument = 109,
	recoilTime		 = 0.3
}} 
__LN.customViewPoint = { "genericHowitzer", {-6.0, 1.0, 0.0}, }	
-- End of Gun

-- Port Front Gun 100mm
-- ws																			= GT_t.inc_ws();
-- GT.WS[ws]																= {};
-- set_recursive_metatable(GT.WS[ws], GT_t.LN_t.cwnm_CM51 );
-- -- GT.WS[ws].area													= -- TODO add damage model
-- GT.WS[ws].center												= 'Pt_100mm_Turret1_Center';
-- GT.WS[ws].drawArgument1									= 201;
-- GT.WS[ws].drawArgument2									= 401;
-- GT.WS[ws].angles												= {
-- 	{math.rad(135), math.rad(40), math.rad(-7.5), math.rad(85)}, -- TODO Needs updating
-- }
-- -- GT.WS[ws].angles_mech = {
-- -- 	{math.rad(135), math.rad(35), math.rad(-5), math.rad(90)}, -- TODO Needs updating
-- -- }
-- GT.WS[ws].reference_angle_Z							= math.rad(20);
-- GT.WS[ws].reference_angle_Y 						= math.rad(60);
-- GT.WS[ws].LN[1].BR											= {
-- 	{
-- 		connector_name = 'Pt_100mm_Turret1_Barrel_1',
-- 		recoilArgument = 204,
-- 		recoilTime		 = 0.3
-- 	},
-- 	{
-- 		connector_name = 'Pt_100mm_Turret1_Barrel_2',
-- 		recoilArgument = 205,
-- 		recoilTime		 = 0.3
-- 	}
-- }
--GT.WS[8] -- Current Hill based code
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Pt_100mm_Turret1_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
	{math.rad(135), math.rad(40), math.rad(-7.5), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 201
GT.WS[ws].drawArgument2 = 401
GT.WS[ws].reference_angle_Z = math.rad(20);
	GT.WS[ws].reference_angle_Y = math.rad(60);

--GT.WS[8].LN[1] -- Anti Air Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51_Air);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name = 'Pt_100mm_Turret1_Barrel_1',
		recoilArgument = 204,
		recoilTime		 = 0.3
	},
	{
		connector_name = 'Pt_100mm_Turret1_Barrel_2',
		recoilArgument = 205,
		recoilTime		 = 0.3
	}
	} 

--GT.WS[8].LN[2] -- Allows for A/G Shooting
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51);
__LN.BR = {{
	connector_name = 'Pt_100mm_Turret1_Barrel_1',
	recoilArgument = 204,
	recoilTime		 = 0.3
},
{
	connector_name = 'Pt_100mm_Turret1_Barrel_2',
	recoilArgument = 205,
	recoilTime		 = 0.3
}} 
__LN.customViewPoint = { "genericHowitzer", {-6.0, 1.0, 0.0}, }	
-- END OF GUN


-- Port Middle Gun 100mm
-- ws																			= GT_t.inc_ws();
-- GT.WS[ws]																= {};
-- set_recursive_metatable(GT.WS[ws], GT_t.LN_t.cwnm_CM51 );
-- -- GT.WS[ws].area													= -- TODO add damage model
-- GT.WS[ws].center												= 'Pt_100mm_Turret2_Center';
-- GT.WS[ws].drawArgument1									= 202;
-- GT.WS[ws].drawArgument2									= 402;
-- GT.WS[ws].angles												= {
-- 	{math.rad(135), math.rad(35), math.rad(-7.5), math.rad(85)}, -- TODO Needs updating
-- }
-- -- GT.WS[ws].angles_mech = {
-- -- 	{math.rad(135), math.rad(35), math.rad(-5), math.rad(90)}, -- TODO Needs updating
-- -- }
-- GT.WS[ws].reference_angle_Z							= math.rad(20);
-- GT.WS[ws].reference_angle_Y 						= math.rad(90);
-- GT.WS[ws].LN[1].BR											= {
-- 	{
-- 		connector_name = 'Pt_100mm_Turret2_Barrel_1',
-- 		recoilArgument = 206,
-- 		recoilTime		 = 0.3
-- 	},
-- 	{
-- 		connector_name = 'Pt_100mm_Turret2_Barrel_2',
-- 		recoilArgument = 207,
-- 		recoilTime		 = 0.3
-- 	}
-- }
--GT.WS[8] -- Current Hill based code
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Pt_100mm_Turret2_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
	{math.rad(135), math.rad(35), math.rad(-7.5), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 202
GT.WS[ws].drawArgument2 = 402
GT.WS[ws].reference_angle_Z = math.rad(20);
	GT.WS[ws].reference_angle_Y = math.rad(90);

--GT.WS[8].LN[1] -- Anti Air Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51_Air);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name = 'Pt_100mm_Turret2_Barrel_1',
		recoilArgument = 206,
		recoilTime		 = 0.3
	},
	{
		connector_name = 'Pt_100mm_Turret2_Barrel_2',
		recoilArgument = 207,
		recoilTime		 = 0.3
	}
	} 

--GT.WS[8].LN[2] -- Allows for A/G Shooting
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51);
__LN.BR = {{
	connector_name = 'Pt_100mm_Turret2_Barrel_1',
	recoilArgument = 206,
	recoilTime		 = 0.3
},
{
	connector_name = 'Pt_100mm_Turret2_Barrel_2',
	recoilArgument = 207,
	recoilTime		 = 0.3
}} 
__LN.customViewPoint = { "genericHowitzer", {-6.0, 1.0, 0.0}, }	
-- END OF GUN


-- Port Rear Gun 100mm
-- ws																			= GT_t.inc_ws();
-- GT.WS[ws]																= {};
-- set_recursive_metatable(GT.WS[ws], GT_t.LN_t.cwnm_CM51 );
-- -- GT.WS[ws].area													= -- TODO add damage model
-- GT.WS[ws].center												= 'Pt_100mm_Turret3_Center';
-- GT.WS[ws].drawArgument1									= 203;
-- GT.WS[ws].drawArgument2									= 403;
-- GT.WS[ws].angles												= {
-- 	{math.rad(135), math.rad(35), math.rad(-7.5), math.rad(85)}, -- TODO Needs updating
-- }
-- -- GT.WS[ws].angles_mech = {
-- -- 	{math.rad(135), math.rad(35), math.rad(-5), math.rad(90)}, -- TODO Needs updating
-- -- }
-- GT.WS[ws].reference_angle_Z							= math.rad(20);
-- GT.WS[ws].reference_angle_Y 						= math.rad(120);
-- GT.WS[ws].LN[1].BR											= {
-- 	{
-- 		connector_name = 'Pt_100mm_Turret3_Barrel_1',
-- 		recoilArgument = 208,
-- 		recoilTime				= 0.3
-- 	},
-- 	{
-- 		connector_name = 'Pt_100mm_Turret3_Barrel_2',
-- 		recoilArgument = 209,
-- 		recoilTime				= 0.3
-- 	}
-- }
--GT.WS[8] -- Current Hill based code
local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Pt_100mm_Turret3_Center'
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(20);
GT.WS[ws].angles = {
	{math.rad(135), math.rad(35), math.rad(-7.5), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 203;
GT.WS[ws].drawArgument2 = 403;
GT.WS[ws].reference_angle_Z = math.rad(20);
	GT.WS[ws].reference_angle_Y = math.rad(120);

--GT.WS[8].LN[1] -- Anti Air Gun
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51_Air);
__LN.sightMaxTanVel = 300
__LN.BR = {
	{
		connector_name = 'Pt_100mm_Turret3_Barrel_1',
		recoilArgument = 208,
		recoilTime				= 0.3
	},
	{
		connector_name = 'Pt_100mm_Turret3_Barrel_2',
		recoilArgument = 209,
		recoilTime				= 0.3
	}
	} 

--GT.WS[8].LN[2] -- Allows for A/G Shooting
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Sverdlov_CM51);
__LN.BR = {{
	connector_name = 'Pt_100mm_Turret3_Barrel_1',
	recoilArgument = 208,
	recoilTime				= 0.3
},
{
	connector_name = 'Pt_100mm_Turret3_Barrel_2',
	recoilArgument = 209,
	recoilTime				= 0.3
}} 
__LN.customViewPoint = { "genericHowitzer", {-6.0, 1.0, 0.0}, }	
-- END OF GUN


-------------------------------------------------------------------------
-- AAA MG's around the ship --
-- Front Guns --
-- Pt_AAA_Turret1
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Pt_AAA_Turret1_Center'
GT.WS[ws].drawArgument1 = 71
GT.WS[ws].drawArgument2 = 72
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(45)
GT.WS[ws].angles = {
	{math.rad(15.12), math.rad(-120.06), math.rad(13.05), math.rad(68.58)},
	{math.rad(-120.06), math.rad(-180), math.rad(29.97), math.rad(51.39)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Pt_AAA_Turret1_Barrel_1',
	},
	{
		connector_name = 'Pt_AAA_Turret1_Barrel_2',
	}
} 



-- Pt_AAA_Turret2
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Pt_AAA_Turret2_Center'
GT.WS[ws].drawArgument1 = 73
GT.WS[ws].drawArgument2 = 74
GT.WS[ws].reference_angle_Z = math.rad(10)
GT.WS[ws].reference_angle_Y = math.rad(45)
GT.WS[ws].angles = {
	{math.rad(7.2), math.rad(-1.98), math.rad(63.18), math.rad(68.58)},
	{math.rad(30.78), math.rad(7.2), math.rad(81.9), math.rad(68.58)},
	{math.rad(143.28), math.rad(30.78), math.rad(-3.6), math.rad(68.58)},
	{math.rad(180), math.rad(143.28), math.rad(31.05), math.rad(68.58)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Pt_AAA_Turret2_Barrel_1',
	},
	{
		connector_name = 'Pt_AAA_Turret2_Barrel_2',
	}
};
-- Pt_AAA_Turret3
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Pt_AAA_Turret3_Center'
GT.WS[ws].drawArgument1 = 75
GT.WS[ws].drawArgument2 = 76
GT.WS[ws].reference_angle_Z = math.rad(0)
GT.WS[ws].reference_angle_Y = math.rad(60)
GT.WS[ws].angles = {
	{math.rad(33.3), math.rad(7.2), math.rad(51.39), math.rad(68.58)},
	{math.rad(126.36), math.rad(33.3), math.rad(-4.95), math.rad(68.58)},
	{math.rad(136.8), math.rad(126.36), math.rad(16.02), math.rad(68.58)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Pt_AAA_Turret3_Barrel_1',
	},
	{
		connector_name = 'Pt_AAA_Turret3_Barrel_2',
	}
};
-- Pt_AAA_Turret4
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Pt_AAA_Turret4_Center'
GT.WS[ws].drawArgument1 = 77
GT.WS[ws].drawArgument2 = 78
GT.WS[ws].reference_angle_Z = math.rad(20)
GT.WS[ws].reference_angle_Y = math.rad(80)
GT.WS[ws].angles = {
	{math.rad(30.78), math.rad(22.86), math.rad(31.05), math.rad(68.58)},
	{math.rad(117.18), math.rad(30.78), math.rad(-4.23), math.rad(68.58)},
	{math.rad(151.2), math.rad(117.18), math.rad(40.95), math.rad(68.58)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Pt_AAA_Turret4_Barrel_1',
	},
	{
		connector_name = 'Pt_AAA_Turret4_Barrel_2',
	}
};
-- Pt_AAA_Turret5
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Pt_AAA_Turret5_Center'
GT.WS[ws].drawArgument1 = 79
GT.WS[ws].drawArgument2 = 80
GT.WS[ws].reference_angle_Z = math.rad(20)
GT.WS[ws].reference_angle_Y = math.rad(50)
GT.WS[ws].angles = {
	{math.rad(32.04), math.rad(9.9), math.rad(18), math.rad(27.18)},
	{math.rad(144.72), math.rad(32.04), math.rad(10.17), math.rad(68.58)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Pt_AAA_Turret5_Barrel_1',
	},
	{
		connector_name = 'Pt_AAA_Turret5_Barrel_2',
	}
};
-- Pt_AAA_Turret6
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Pt_AAA_Turret6_Center'
GT.WS[ws].drawArgument1 = 91
GT.WS[ws].drawArgument2 = 92
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(50)
GT.WS[ws].angles = {
	{math.rad(180), math.rad(8.46), math.rad(8.820), math.rad(68.58)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Pt_AAA_Turret6_Barrel_1',
	},
	{
		connector_name = 'Pt_AAA_Turret6_Barrel_2',
	}
};
-- Pt_AAA_Turret7
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Pt_AAA_Turret7_Center'
GT.WS[ws].drawArgument1 = 93
GT.WS[ws].drawArgument2 = 94
GT.WS[ws].reference_angle_Z = math.rad(45)
GT.WS[ws].reference_angle_Y = math.rad(90)
GT.WS[ws].angles = {
	{math.rad(47.7), math.rad(20.34), math.rad(20.61), math.rad(68.58)},
	{math.rad(180), math.rad(47.7), math.rad(42.3), math.rad(68.58)},
	{math.rad(-180), math.rad(-72.72), math.rad(23.85), math.rad(68.58)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Pt_AAA_Turret7_Barrel_1',
	},
	{
		connector_name = 'Pt_AAA_Turret7_Barrel_2',
	}
};
-- Pt_AAA_Turret8
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Pt_AAA_Turret8_Center'
GT.WS[ws].drawArgument1 = 95
GT.WS[ws].drawArgument2 = 96
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(170)
GT.WS[ws].angles = {
	{math.rad(46.44), math.rad(22.86), math.rad(23.85), math.rad(68.58)},
	{math.rad(168.3), math.rad(46.44), math.rad(5.58), math.rad(68.58)},
	{math.rad(180), math.rad(168.3), math.rad(10.17), math.rad(68.58)},
	{math.rad(-147.24), math.rad(-121.14), math.rad(10.17), math.rad(77.94)},
	{math.rad(-121.14), math.rad(-46.44), math.rad(23.85), math.rad(68.58)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Pt_AAA_Turret8_Barrel_1',
	},
	{
		connector_name = 'Pt_AAA_Turret8_Barrel_2',
	}
};

-- Sb_AAA_Turret1
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Sb_AAA_Turret1_Center'
GT.WS[ws].drawArgument1 = 81
GT.WS[ws].drawArgument2 = 82
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(-45)
GT.WS[ws].angles = {
	{math.rad(36.36), math.rad(-92.34), math.rad(13.05), math.rad(68.58)},
	{math.rad(85.68), math.rad(36.36), math.rad(29.97), math.rad(51.39)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Sb_AAA_Turret1_Barrel_1',
	},
	{
		connector_name = 'Sb_AAA_Turret1_Barrel_2',
	}
} 

-- Sb_AAA_Turret2
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Sb_AAA_Turret2_Center'
GT.WS[ws].drawArgument1 = 83
GT.WS[ws].drawArgument2 = 84
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(-45)
GT.WS[ws].angles = {
	{math.rad(90), math.rad(-120), math.rad(12), math.rad(90)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Sb_AAA_Turret2_Barrel_1',
	},
	{
		connector_name = 'Sb_AAA_Turret2_Barrel_2',
	}
} 


-- Sb_AAA_Turret3
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Sb_AAA_Turret3_Center'
GT.WS[ws].drawArgument1 = 85
GT.WS[ws].drawArgument2 = 86
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(-45)
GT.WS[ws].angles = {
	{math.rad(90), math.rad(-120), math.rad(12), math.rad(90)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Sb_AAA_Turret3_Barrel_1',
	},
	{
		connector_name = 'Sb_AAA_Turret3_Barrel_2',
	}
} 


-- Sb_AAA_Turret4
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Sb_AAA_Turret4_Center'
GT.WS[ws].drawArgument1 = 87
GT.WS[ws].drawArgument2 = 88
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(-45)
GT.WS[ws].angles = {
	{math.rad(90), math.rad(-120), math.rad(12), math.rad(90)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Sb_AAA_Turret4_Barrel_1',
	},
	{
		connector_name = 'Sb_AAA_Turret4_Barrel_2',
	}
} 


-- Sb_AAA_Turret5
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Sb_AAA_Turret5_Center'
GT.WS[ws].drawArgument1 = 89
GT.WS[ws].drawArgument2 = 90
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(-45)
GT.WS[ws].angles = {
	{math.rad(90), math.rad(-120), math.rad(12), math.rad(90)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Sb_AAA_Turret5_Barrel_1',
	},
	{
		connector_name = 'Sb_AAA_Turret5_Barrel_2',
	}
} 


-- Sb_AAA_Turret6
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Sb_AAA_Turret6_Center'
GT.WS[ws].drawArgument1 = 111
GT.WS[ws].drawArgument2 = 112
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(-45)
GT.WS[ws].angles = {
	{math.rad(90), math.rad(-120), math.rad(12), math.rad(90)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Sb_AAA_Turret6_Barrel_1',
	},
	{
		connector_name = 'Sb_AAA_Turret6_Barrel_2',
	}
} 
-- Sb_AAA_Turret7
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Sb_AAA_Turret7_Center'
GT.WS[ws].drawArgument1 = 113
GT.WS[ws].drawArgument2 = 114
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(-45)
GT.WS[ws].angles = {
	{math.rad(90), math.rad(-120), math.rad(12), math.rad(90)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Sb_AAA_Turret7_Barrel_1',
	},
	{
		connector_name = 'Sb_AAA_Turret7_Barrel_2',
	}
} 
-- Sb_AAA_Turret8
ws = GT_t.inc_ws();
GT.WS[ws] = {}
-- GT.WS[ws].area = 'FTURRETSV'
GT.WS[ws].center = 'Sb_AAA_Turret8_Center'
GT.WS[ws].drawArgument1 = 115
GT.WS[ws].drawArgument2 = 116
GT.WS[ws].reference_angle_Z = math.rad(15)
GT.WS[ws].reference_angle_Y = math.rad(-45)
GT.WS[ws].angles = {
	{math.rad(90), math.rad(-120), math.rad(12), math.rad(90)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
-- {math.rad(33), math.rad(33), math.rad(33), math.rad(33)},
};
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.CWNM_70_k);
__LN.BR = {
	{
		connector_name = 'Sb_AAA_Turret8_Barrel_1',
	},
	{
		connector_name = 'Sb_AAA_Turret8_Barrel_2',
	}
} 


-------------------------------------------------------------------------

GT.Name = "Sverdlov" -- folder name for Liveries
GT.DisplayName = _("Sverdlov-Class Cruiser") -- name in game in ME and on the tape at the bottom
GT.DisplayNameShort = _("Sverdlov") -- Label name
GT.Rate = 3000.000000 -- Reward Points

GT.Sensors = {  OPTIC = {"long-range air defence optics", "long-range naval optics", "long-range naval LLTV", "long-range naval FLIR"}, --optics types
                RADAR = {"Tor 9A331", "generic SAM search visir", "generic SAM LL search visir", "ticonderoga search radar" }, --radar types
            }

 ----------------------------------------------------
GT.DetectionRange	= GT.airFindDist;
GT.ThreatRange		= GT.airWeaponDist;
GT.Singleton		= "yes";
GT.mapclasskey		= "P0091000067"; --map icon >>MissionEditor\data\NewMap\images
GT.attribute		= {wsType_Navy,wsType_Ship,wsType_ArmedShip,wsType_GenericLightArmoredShip,
						"Cruisers",
					};
					--unfortunately the list with these have since been hidden by ED along with the ships lua files
GT.Categories		= {
						{name = "Armed Ship"} -- has weapons
					};	
					
			
-- categories in the mission editor 
GT.tags  = 
{
	"Cruiser",
}
--[[ 

example
GT.tags  = {"Battlecruiser",}
------------------------------------------------------------
ship type =
Carrier
Battleship
Battlecruiser
Cruiser
Destroyer
Frigate
Corvette and Patrol
Fast Attack Craft
Submarine
Support
Amphibious Assault

File location >>DCS World version\MissionEditor\modules\me_ship.lua

---------------------------------------
attributes
["ski_jump"] = {},
["catapult"] = {},
["Aircraft Carriers"] = {"Heavy armed ships",},
["Cruisers"] = {"Heavy armed ships",},
["Destroyers"] = {"Heavy armed ships",},
["Frigates"] = {"Heavy armed ships",},
["Corvettes"] = {"Heavy armed ships",},
["Submarines"] = {"Heavy armed ships",},
["Heavy armed ships"] = {"Armed ships", "Armed Air Defence", "HeavyArmoredUnits",},
["Light armed ships"] = {"Armed ships","NonArmoredUnits"},
["Armed ships"] = {"Ships"},
["Unarmed ships"] = {"Ships","HeavyArmoredUnits",},
["Ships"] = {"All",}

--]]	
