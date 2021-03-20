#include common_scripts\utility;

main()
{
	level._effect[ "cliffside_upward_mist" ] = loadfx( "vfx/fog/cliffside_upward_mist" );
	level._effect[ "test_axis_effectnow" ] = loadfx( "vfx/test/test_axis_effectnow" );
	level._effect[ "pyroclastic_flow_2" ] = loadfx( "vfx/map/mp_recovery/pyroclastic_flow_2" );
	level._effect[ "cloud_rolling_cliffside_up" ] = loadfx( "vfx/cloud/cloud_rolling_cliffside_up" );
	level._effect[ "panoramic_screen_runner" ] = loadfx( "vfx/map/mp_recovery/panoramic_screen_runner" );
	level._effect[ "ocean_vista_fog" ] = loadfx( "vfx/map/mp_recovery/ocean_vista_fog" );
	level._effect[ "hangar_door_close_sulfur_gas" ] = loadfx( "vfx/map/mp_recovery/hangar_door_close_sulfur_gas" );
	level._effect[ "volcano_eruption_wind_gust" ] = loadfx( "vfx/map/mp_recovery/volcano_eruption_wind_gust" );
	level._effect[ "ambient_particles_bright" ] = loadfx( "vfx/dust/ambient_particles_bright" );
	level._effect[ "steam_pipe_leak_interior_burst_runner_lp" ] = loadfx( "vfx/steam/steam_pipe_leak_interior_burst_runner_lp" );
	level._effect[ "falling_water_drip_runner_fast" ] = loadfx( "vfx/water/falling_water_drip_runner_fast" );
	level._effect[ "falling_water_drip_line_runner_fast" ] = loadfx( "vfx/water/falling_water_drip_line_runner_fast" );
	level._effect[ "sulfur_dust_tornado_runner" ] = loadfx( "vfx/map/mp_recovery/sulfur_dust_tornado_runner" );
	level._effect[ "sulfur_dust_blowing_runner" ] = loadfx( "vfx/map/mp_recovery/sulfur_dust_blowing_runner" );
	level._effect[ "steam_pipe_leak_interior_sm" ] = loadfx( "vfx/steam/steam_pipe_leak_interior_sm" );
	level._effect[ "generator_steam_windy_sm" ] = loadfx( "vfx/steam/generator_steam_windy_sm" );
	level._effect[ "dust_ambient_street" ] = loadfx( "vfx/map/mp_recovery/dust_ambient_street_recovery" );
	level._effect[ "trash_tornado_s_runner" ] = loadfx( "vfx/wind/trash_tornado_s_runner" );
	level._effect[ "electrical_sparks_runner" ] = loadfx( "vfx/explosion/electrical_sparks_runner" );
	level._effect[ "leaves_runner" ] = loadfx( "vfx/wind/leaves_runner" );
	level._effect[ "light_dust_particles" ] = loadfx( "vfx/dust/light_dust_particles" );
	level._effect[ "bird_vulture_circle_runner_less" ] = loadfx( "vfx/animal/bird_vulture_circle_runner_less" );
	level._effect[ "hologram_recovery_map" ] = loadfx( "vfx/map/mp_recovery/hologram_recovery_map" );
	level._effect[ "dust_falling_light_runner" ] = loadfx( "vfx/dust/dust_falling_light_runner" );
	level._effect[ "light_dust_particles_far_lrg" ] = loadfx( "vfx/dust/light_dust_particles_far_lrg" );
	level._effect[ "falling_water_drip_100x100_runner_slow" ] = loadfx( "vfx/water/falling_water_drip_100x100_runner_slow" );
	level._effect[ "falling_water_drip_100x100_runner" ] = loadfx( "vfx/water/falling_water_drip_100x100_runner" );
	level._effect[ "plastic_shreds_hanging_e_slow" ] = loadfx( "vfx/wind/plastic_shreds_hanging_e_slow" );
	level._effect[ "rain_forest_dripping_leaves_100x100_runner" ] = loadfx( "vfx/water/rain_forest_dripping_leaves_100x100_runner" );
	level._effect[ "leaves_fall_twirl_no_physics_3" ] = loadfx( "vfx/wind/leaves_fall_twirl_no_physics_3" );
	level._effect[ "falling_water_exterior_narrow" ] = loadfx( "vfx/water/falling_water_exterior_narrow" );
	level._effect[ "falling_water_exterior_thin" ] = loadfx( "vfx/water/falling_water_exterior_thin" );
	level._effect[ "insects_moths" ] = loadfx( "vfx/animal/insects_moths" );
	level._effect[ "insects_dragonfly_runner_a" ] = loadfx( "vfx/animal/insects_dragonfly_runner_a" );
	level._effect[ "insects_flies_landing" ] = loadfx( "vfx/animal/insects_flies_landing" );

	level._effect[ "fx_sunflare_mp_recovery" ] = loadfx( "vfx/lensflare/fx_sunflare_mp_recovery" );
	level._effect[ "volcano_smk_base_sm" ] = loadfx( "vfx/map/mp_recovery/volcano_smk_base_sm" );
	level._effect[ "volcano_smk_base" ] = loadfx( "vfx/map/mp_recovery/volcano_smk_base" );
	
	//dynamic event
	
	level._effect[ "dynamic_strobe_light" ]								 = loadfx( "vfx/lights/light_poison_gas_alarm_strobe" );
	
	level._effect[ "pyroclastic_flow_1_aftermath" ] = loadfx( "vfx/map/mp_recovery/pyroclastic_flow_1_aftermath" );
	level._effect[ "exploding_volcanic_boulder_3" ] = loadfx( "vfx/map/mp_recovery/exploding_volcanic_boulder_3" );
	level._effect[ "exploding_volcanic_boulder_2" ] = loadfx( "vfx/map/mp_recovery/exploding_volcanic_boulder_2" );
	level._effect[ "volcano_eruption" ] = loadfx( "vfx/map/mp_recovery/volcano_eruption" );
	level._effect[ "exploding_volcanic_boulder_1" ] = loadfx( "vfx/map/mp_recovery/exploding_volcanic_boulder_1" );
	level._effect[ "pyroclastic_flow_1" ] = loadfx( "vfx/map/mp_recovery/pyroclastic_flow_1" );
	level._effect[ "volcano_smk_column" ] = loadfx( "vfx/map/mp_recovery/volcano_smk_column" );

	//
/#
    if ( getdvar( "clientSideEffects" ) != "1" )
        maps\createfx\mp_recovery_fx::main();
#/
    
    thread sulfursmokefx();
    thread starting_side_fx();
    thread panaramic_screen_fx();
    thread setup_boulder_data();

}

sulfursmokefx()
{
	wait (10);
	level thread common_scripts\_exploder::activate_clientside_exploder(200);
	
}

starting_side_fx()
{
	wait (5);
	level thread common_scripts\_exploder::activate_clientside_exploder(40);
	
}

sulfur_door_fx()
{
		wait 11;
		level thread common_scripts\_exploder::activate_clientside_exploder(201);//play sulfur gas vfx at base of closing doors
}

panaramic_screen_fx()
{
	wait (5);	
	fxangles = (0,180,0);
	level.panoramicfx = SpawnFX( getfx("panoramic_screen_runner"), (353.028, 1314.23, 195.384), AnglesToForward(fxangles));
	SetFXKillOnDelete( level.panoramicfx , true);
    TriggerFX(level.panoramicfx ); 
}

setup_boulder_audio(exploderNum)
{
	timeElapsed = 0;
	lifetime = 7; //this is approximate
	velocityModifier = 0.5; //don't know why we need this, but it makes velocity line up
	if ( exploderNum >= 30 && exploderNum <= 39 )
		velocity = 10500 * velocityModifier;
	else if ( exploderNum >= 20 && exploderNum <= 29 )
		velocity = 9400 * velocityModifier;
	else
		velocity = 8500 * velocityModifier;
	
	audioEnt = spawn_tag_origin();
	//AUDIO: attach to this ent
	
	//audioEnt show();
	//waitframe();
	//playfxontag(getfx("test_axis_effectnow"), audioEnt, "tag_origin");
	
	
	fx_origin = level.boulder_originAndAngles[( exploderNum - 10 ) * 2];
	fx_angles = level.boulder_originAndAngles[( exploderNum - 10) * 2 + 1];
	
	position = fx_origin;
	deltaTime = 0.05;
	movementDir = AnglesToForward( fx_angles );
	while (timeElapsed < lifetime )
	{
		timeElapsed += deltaTime;

		gravity = -800 * timeElapsed; // change in velocity over time
		//simulate velocity falloff curve in EffectsEd
		simVelocity = velocity * ( 1 - ( timeElapsed / 10 ) );
		
		position += movementDir * simVelocity * deltaTime;
		position += ( 0, 0, gravity ) * deltaTime; // how much moves in one frame
		
		audioEnt.origin = position;
		wait deltaTime;
	}
	//AUDIO: clean up sounds here if necessary
	audioEnt delete();
}


setup_boulder_data()
{
	level.boulder_originAndAngles = [(4764.12, -4666.05, -3881.8), (288.868, 134.244, -179.855),  //10
							   (4873.61, -5815.81, -4444.13), (303.151, 134.109, 0), //11
							   (6227.04, -4752.63, -4819.45), (299.8, 138.328, 0),//12
							   (7191.5, -3747.29, -4450.65), (302.588, 140.3, 0),//13
							   (4596.95, -6988.97, -4302.4), (300.576, 130.934, 0),//14
							   (6441.57, -4411.88, -4242.7), (312.955, 137.356, 0),//15
							   (6425.57, -5079.9, -4603.21), (297.241, 147.183, -1.09072),//16
							   (5873.86, -6335.32, -4248.58), (304.837, 140.086, 0),//17
							   (8332.61, -4342.87, -4162.14), (313.281, 136.46, -3.19022),//18
							   (5910, -5556.42, -4065.61), (302.802, 112.191, 0),//19
							   (7605.93, -5012.55, -4544.05), (299.936, 144.347, -5.22149),//20
							   (5253.4, -6306.81, -4659.46), (296.95, 131.705, 5.75097),//21
							   (7365.08, -5319.51, -4325.73), (296.823, 140.553, -2.14372),//22
							   (6120.12, -6143.28, -4015.62), (299.86, 134.308, 3.48743),//23
							   (5156.95, -6251.55, -4748.15), (300.799, 138.327, 0),//24
							   (6770.39, -5079.06, -4367.11), (297.942, 144.73, -5.50522),//25
							   (6011.76, -6667.48, -4379.29), (298.408, 125.624, 11.3708),//26
							   (6975.09, -6729.87, -4546.35), (307.728, 116.68, -7.04682),//27
							   (8209.06, -4835.69, -4449.04), (305.451, 143.43, 1.35974),//28
							   (6772.01, -6863.4, -4306.61), (305.091, 134.787, -0.580152),//29
							   (7553.56, -5943.9, -4536.5), (317.16, 130.42, 6.41857),//30
							   (6247.48, -8019.34, -4675.72), (314.179, 129.939, 6.75466),//31
							   (6330.58, -5662.52, -4678.99), (296.205, 127.452, 8.53008),//32
							   (6771.72, -5961.53, -4667.08), (314.595, 137.68, 4.20879),//33
							   (7471.57, -4327.9, -4594.32), (298.442, 143.3, 0.207649),//34
							   (5506.12, -6891.88, -4739.88), (299.009, 119.934, 2.78166),//35
							   (7444.9, -6233.5, -4591.79), (301.58, 144.62, -3.7296),//36
							   (6281.2, -7304.17, -4699.27), (316.055, 125.61, 15.0278),//37
							   (5774.43, -6463.15, -4825.31), (318.098, 116.063, 3.72898),//38
							   (6305.33, -5689.15, -4611.9), (296.334, 126.042, 8.69726)];//39

}
							   
					  
