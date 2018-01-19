/// @function is_between(value, start, end)
/// @description Checks if a value is between a given range
/// @param {real} value The provided value
/// @param {real} start The start of the range
/// @param {real} end The end of the range

// Works if end value is bigger than start value for range and visa versa

// Get arguments
start_value = argument0;
range_start = argument1;
range_end = argument2; 

// Determine if which of the range values is the largest
var left_range = min(range_start,range_end);
var right_range = max(range_start,range_end);

// Return true if the value is within the given range
return (left_range < start_value && start_value < right_range) 