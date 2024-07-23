declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "CWNM_B_35_AP", 
	user_name 				= _("B-35 AP"),
	model_name    			= "tracer_bullet_red",
	v0    					= 950.0,
	Dv0   					= 0.0030,
	Da0     				= 0.0003,
	Da1     				= 0.0005,
	mass      				= 55,
	explosive     			= 1.1,
  piercing_mass				= 2.5,
	life_time     			= 100,  
	caliber     	 		= 152.0, 
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {0.5,0.43,0.70,0.138,1.43},
	k1        				= 1.2e-09,
	tracer_off    			= 100,
	scale_tracer  			= 0,
	cartridge 				= 0,
	
	aiming_table = { {
			init_vel = 950
		},
		precalculateAimingTable = true,
		precalculateAirDefenceAimingTable = false
	},
	
});