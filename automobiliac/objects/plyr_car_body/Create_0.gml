/// Initialize car body object

// This object renders the car and follows the car controller object
// For explanation see turn_car script

// Particle System Variables

// Initialize Particle System
part_sys = part_system_create();
part_system_automatic_draw(part_sys,false);
part_system_position(part_sys,0,0);

// Initialize emitter
part_emit = part_emitter_create(part_sys);

// Create tire particle
tire_part = part_type_create();
part_type_sprite(tire_part,tire_marks,false,false,false);
part_type_life(tire_part,30,100);
part_type_alpha2(tire_part,.5,0);