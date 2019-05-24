//Name of the particle system
Sun_Boss_SolarFlare = part_system_create_layer("TopParticleLayer", true);

//Name of the particle type
SolarFlare = part_type_create();
part_type_shape(SolarFlare,pt_shape_disk);
part_type_size(SolarFlare,2.71,2.81,0.11,1);
part_type_scale(SolarFlare,0.89,1.91);
part_type_color3(SolarFlare,255,4227327,8454143);
part_type_alpha3(SolarFlare,0.73,0.69,0.02);
part_type_speed(SolarFlare,4.37,8.26,-0.03,7);
part_type_direction(SolarFlare,150,276,1,1);
part_type_gravity(SolarFlare,0,270);
part_type_orientation(SolarFlare,66,197,0.40,6,0);
part_type_blend(SolarFlare,1);
part_type_life(SolarFlare,46,59);

MeteorTrail = part_type_create();
part_type_shape(MeteorTrail,pt_shape_smoke);
part_type_size(MeteorTrail,0.10,0.42,0.01,1);
part_type_scale(MeteorTrail,3.70,3.80);
part_type_color3(MeteorTrail,11053491,8421440,0);
part_type_alpha3(MeteorTrail,0.62,0.52,0.02);
part_type_speed(MeteorTrail,1.50,4.28,-0.16,6);
part_type_direction(MeteorTrail,3,253,0,1);
part_type_gravity(MeteorTrail,0,90);
part_type_orientation(MeteorTrail,9,357,0.40,2,0);
part_type_blend(MeteorTrail,1);
part_type_life(MeteorTrail,30,30);

SolarFlare2 = part_type_create();
part_type_shape(SolarFlare2,pt_shape_spark);
part_type_size(SolarFlare2,8,12,0.20,0);
part_type_scale(SolarFlare2,3.67,2.04);
part_type_color3(SolarFlare2,16777215,8454143,16777215);
part_type_alpha3(SolarFlare2,0.98,0.75,0.09);
part_type_speed(SolarFlare2,1.50,2,-0.35,5);
part_type_direction(SolarFlare2,151,235,0,6);
part_type_gravity(SolarFlare2,0,90);
part_type_orientation(SolarFlare2,30,119,0.40,3,0);
part_type_blend(SolarFlare2,0);
part_type_life(SolarFlare2,30,30);

StarTrail = part_type_create();
part_type_shape(StarTrail,pt_shape_pixel);
part_type_size(StarTrail,3,4.50,0.14,0);
part_type_scale(StarTrail,0.57,3.36);
part_type_color3(StarTrail,11828836,9965933,16519044);
part_type_alpha3(StarTrail,0.55,0.60,0.03);
part_type_speed(StarTrail,4.91,5.56,-0.13,3);
part_type_direction(StarTrail,270,270,0,4);
part_type_gravity(StarTrail,0.10,270);
part_type_orientation(StarTrail,17,303,0.40,6,1);
part_type_blend(StarTrail,1);
part_type_life(StarTrail,33,35);

LaserTrail = part_type_create();
part_type_shape(LaserTrail,pt_shape_spark);
part_type_size(LaserTrail,0.80,0.80,0,0);
part_type_scale(LaserTrail,0.98,1.31);
part_type_color3(LaserTrail,10289702,5536007,10121100);
part_type_alpha3(LaserTrail,0.67,0.76,0.05);
part_type_speed(LaserTrail,0,0,0,0);
part_type_direction(LaserTrail,90,90,0,0);
part_type_gravity(LaserTrail,0,90);
part_type_orientation(LaserTrail,85,220,0.40,7,1);
part_type_blend(LaserTrail,1);
part_type_life(LaserTrail,100,100);


BigBangBang = part_type_create();
part_type_shape(BigBangBang,pt_shape_flare);
part_type_size(BigBangBang,20,20,0.12,1);
part_type_scale(BigBangBang,4,4);
part_type_color3(BigBangBang,3095100,16776129,16777090);
part_type_alpha3(BigBangBang,0.79,0.59,0.02);
part_type_speed(BigBangBang,4.14,11.89,-0.01,5);
part_type_direction(BigBangBang,148,230,-1,3);
part_type_gravity(BigBangBang,0,270);
part_type_orientation(BigBangBang,16,226,-0.60,4,1);
part_type_blend(BigBangBang,1);
part_type_life(BigBangBang,300,300);
