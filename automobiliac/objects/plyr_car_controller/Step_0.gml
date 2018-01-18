/// Move car if input detected

move_car();

// LIGHTS ARE BROKEN
// Update lights position

lights.x = x + lengthdir_x(5, direction);
lights.y = y + lengthdir_y(5, direction);
lights.image_angle = direction;