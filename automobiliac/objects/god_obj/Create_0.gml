/// Init god object

// This object will control a lot of meta things

// Set to fullscreen
window_set_fullscreen(true);

// Resize the surface for smooooth graphics
surface_resize(application_surface, 4230, 2880);

// Define global variables
global.player_in_car = false;
global.camera_zoomed = false;