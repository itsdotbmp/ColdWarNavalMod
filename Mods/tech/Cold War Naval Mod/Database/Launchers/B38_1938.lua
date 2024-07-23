GT_t.LN_t.CWNM_B38 = {name = "B-38 Pattern 1938 - 152mm", display_name = _("B38 152mm")}
GT_t.LN_t.CWNM_B38.type = 6
GT_t.LN_t.CWNM_B38.distanceMin = 500
GT_t.LN_t.CWNM_B38.distanceMax = 30215
GT_t.LN_t.CWNM_B38.max_trg_alt = 2000
GT_t.LN_t.CWNM_B38.reactionTime = 15
GT_t.LN_t.CWNM_B38.maxShootingSpeed = 8
GT_t.LN_t.CWNM_B38.sensor = {}
GT_t.LN_t.CWNM_B38.angles_mech = { 
	{math.rad(120), math.rad(-120), math.rad(-3), math.rad(12)},
					};
set_recursive_metatable(GT_t.LN_t.CWNM_B38.sensor, GT_t.WSN_t[6])
GT_t.LN_t.CWNM_B38.PL = {}
GT_t.LN_t.CWNM_B38.PL[1] = {}
GT_t.LN_t.CWNM_B38.PL[1]= {
  shell_name = {"CWNM_B_35_AP"},
  automaticLoader = false,
  shot_delay = 60/7.5,
  ammo_capacity = 180,
  portionAmmoCapacity = 18,
  reload_time	= 4800,
}

