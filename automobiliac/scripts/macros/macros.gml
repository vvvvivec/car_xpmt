// Macros

// Player facing macros
#macro FACE_UP 0 
#macro FACE_RIGHT 1
#macro FACE_DOWN 2
#macro FACE_LEFT 3

// Input macros 
#macro LEFT keyboard_check(ord("A"))
#macro RIGHT keyboard_check(ord("D"))
#macro UP  keyboard_check(ord("W"))
#macro DOWN keyboard_check(ord("S"))

// Macros for special car verbage
#macro GAS UP
#macro BRAKE DOWN
#macro EBRAKE keyboard_check(vk_shift)
#macro START_ENGINE keyboard_check_pressed(ord("E"))

// Transmission macros
#macro SHIFT_UP keyboard_check_pressed(ord("F"))
#macro SHIFT_DOWN keyboard_check_pressed(ord("V"))
#macro NEUTRAL 0
#macro REVERSE -1 
#macro FIRST 1
#macro SECOND 2
#macro THIRD 3
#macro FOURTH 4
#macro FIFTH 5
#macro SIXTH 6

// Utility macros
#macro LIGHTS keyboard_check_pressed(ord("L"))
#macro GET_IN_CAR keyboard_check_pressed(vk_enter)

// Camera macros
#macro ZOOM_OUT keyboard_check_pressed(ord("U"))
#macro ZOOM_IN keyboard_check_pressed(ord("I"))