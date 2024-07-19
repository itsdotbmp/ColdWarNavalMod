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
-- -- Custom Weapons																																							--
-- -------------------------------------------------------------------------------------------------

local weapons_path = '/Database/Weapons/'


dofile(current_mod_path .. weapons_path ..'ZS55.lua')

-- -------------------------------------------------------------------------------------------------
-- -- Custom Launchers																																						--
-- -------------------------------------------------------------------------------------------------

local launchers_path = '/Database/Launchers/'


dofile(current_mod_path .. launchers_path ..'CM_51.lua') -- any custom weapons the mod has

-- -------------------------------------------------------------------------------------------------
-- -- Soviet Boats 																																								--
-- -------------------------------------------------------------------------------------------------
local soviet_path = '/Database/Soviet/'


dofile(current_mod_path .."/Database/db_ships.lua")


plugin_done()

