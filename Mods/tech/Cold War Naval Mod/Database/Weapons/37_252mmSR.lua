declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "CWNM_37_252_mmSR_Frag", 
	user_name 				= _("37 x 252 mm SR Frag-T"),
	model_name    			= "tracer_bullet_yellow",
	v0    					= 880,
	Dv0   					= 0.00508,
	Da0     				= 0.0005,
	Da1     				= 0.0,
	mass      				= 0.732,
	explosive     			= 0.036,
	life_time     			= 10,
	caliber    				= 37.0,
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {1.0,0.78,0.60,0.15,1.80},
	k1        				= 9.4e-09,
	tracer_off    			= 12,
	scale_tracer  			= 1,
	cartridge 				= 0,	
  aiming_table													=
	{
		precalculateAirDefenceAimingTable = true,
		precalculateAimingTable = true,
		[1] = { init_vel = 880.0 }
	}
});
