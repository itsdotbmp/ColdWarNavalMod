declare_weapon({
	category															= CAT_SHELLS,
	name																	= "CWNM_ZS55",
	user_name															= _("ZS-55"),
	model_name														= "pula",

	v0    																= 1000.0,
	Dv0   																= 0.0060,
	Da0    												 				= 0.0006,
	Da1    																= 0.0003,
	mass   											   				= 15.6,
	explosive    										 			= 1.34,
	piercing_mass													= 0.5,
	life_time     												= 90,
	caliber     													= 100.0,
	s         														= 0.0,
	j         														= 0.0,
	l         														= 0.0,
	charTime    													= 0,
	cx        														= {1, 0.65, 0.67, 0.232, 2.08},
	k1        														= 5.7e-09,
	tracer_off    												= 100,
	tracer_on    													= 0,
	scale_smoke    												= 1.0, 
	smoke_opacity  												= 0.3, -- Seems that we're not getting any smoke when fired.
	visual_effect_correction 							= 4.0,

	cartridge															= 0,

	aiming_table													=
	{
		precalculateAirDefenceAimingTable = true,
		precalculateAimingTable = true,
		[1] = { init_vel = 1000.0 }
	}
});

declare_weapon({
	category															= CAT_SHELLS,
	name																	= "CWNM_OF55",
	user_name															= _("OF-55"),
	model_name														= "pula",

	v0    																= 1000.0,
	Dv0   																= 0.0060,
	Da0    												 				= 0.0006,
	Da1    																= 0.0003,
	mass   											   				= 15.6,
	explosive    										 			= 1.126,
	piercing_mass													= 0.5,
	life_time     												= 90,
	caliber     													= 100.0,
	s         														= 0.0,
	j         														= 0.0,
	l         														= 0.0,
	charTime    													= 0,
	cx        														= {1, 0.65, 0.67, 0.232, 2.08},
	k1        														= 5.7e-09,
	tracer_off    												= 100,
	tracer_on    													= 0,
	scale_smoke    												= 1.0, 
	smoke_opacity  												= 0.3, -- Seems that we're not getting any smoke when fired.
	visual_effect_correction 							= 4.0,

	cartridge															= 0,

	aiming_table													=
	{
		precalculateAirDefenceAimingTable = true,
		precalculateAimingTable = true,
		[1] = { init_vel = 1000.0 }
	}
});