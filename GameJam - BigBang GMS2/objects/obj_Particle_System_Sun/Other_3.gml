//Destroys the system creating the particles - stops memory leaks (stops further creation)
part_system_destroy(Sun_Boss_SolarFlare);

//Destroys all instances of the type of particle (stops what's on scren staying)
part_type_destroy(SolarFlare);