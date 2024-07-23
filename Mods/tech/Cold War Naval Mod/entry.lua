declare_plugin("Cold War Naval Mod",

{
displayName   	= _("Cold War Naval Mod"),
shortName	  	=   "CWNM",
installed 	 	= true, 
dirName	  	 	= current_mod_path,

encyclopedia_path = current_mod_path ..'/Encyclopedia',
	
fileMenuName 	= _("CWNM"),
version		 	= "0.0.1",		 
state		 	= "installed",
developerName	= "dotbmp, tetet, des - 86thvFW",
info		 	= _("Cold War Era Naval Units"),

Skins = 
{
	 {     
	     name  = "Svedlov", 
		 dir   = "Skins/1" 
	 },
},

})

-- -------------------------------------------------------------------------------------------------
-- shapes																																													--
-- -------------------------------------------------------------------------------------------------

mount_vfs_model_path    (current_mod_path ..  "/Shapes")


-- -------------------------------------------------------------------------------------------------
-- -- Liveries																																										--
-- -------------------------------------------------------------------------------------------------

mount_vfs_liveries_path (current_mod_path ..  "/Liveries")

-- -------------------------------------------------------------------------------------------------
-- -- Textures																																										--
-- -------------------------------------------------------------------------------------------------

mount_vfs_texture_path	(current_mod_path ..  "/Textures/cvnm_soviet_sverdlov")

-- -------------------------------------------------------------------------------------------------
-- -- Custom Sensors																																							--
-- -------------------------------------------------------------------------------------------------

local sensors_path = '/Database/Sensors/'

dofile(current_mod_path .. sensors_path ..'20.lua') -- Custom Sensors, currently based on CurrentHills work

-- -------------------------------------------------------------------------------------------------
-- -- Custom Weapons																																							--
-- -------------------------------------------------------------------------------------------------

local weapons_path = '/Database/Weapons/'


dofile(current_mod_path .. weapons_path ..'ZS55.lua') -- Sverdlov-Class 100mm AA/AG
dofile(current_mod_path .. weapons_path ..'37_252mmSR.lua') -- Sverdlov-Class 37mm AAA MG's
dofile(current_mod_path .. weapons_path ..'B35_152mm.lua')

-- -------------------------------------------------------------------------------------------------
-- -- Custom Launchers																																						--
-- -------------------------------------------------------------------------------------------------

local launchers_path = '/Database/Launchers/'


dofile(current_mod_path .. launchers_path ..'CM_51.lua') -- Sverdlov-Class 100mm Turret
dofile(current_mod_path .. launchers_path ..'70_k.lua')  -- Sverdlov-Class 37mm Naval V-11 Turrets
dofile(current_mod_path .. launchers_path ..'B38_1938.lua') -- Sverdlov-Class 152mm Naval Gun B-38 Pattern 1938


-- -------------------------------------------------------------------------------------------------
-- -- Soviet Boats 																																								--
-- -------------------------------------------------------------------------------------------------


dofile(current_mod_path .."/Database/db_ships.lua")

-- type values:
-- 3 - AA autocannons
-- 6 - AG Cannon
-- 9 - machineguns up to 12.7 (.50) - high priority targets are infantry, nonarmored units
-- 10 - AA machineguns - high priority targets are aircrafts, helicopters, light armored units
-- 12 - AG autocannons

plugin_done()

