/// @function approach(start, end, interval)
/// @description Starting at given value, approach next value at given interval
/// @param {real} start The starting value
/// @param {real} end The desired value
/// @param {real} interval The interval to approach by

// Get arguments and store them
start_value = argument0;
end_value = argument1;
interval = argument2; 

// If the start value is greater than the end value, decrement start value by interval
if(start_value > end_value)
{
	start_value -= interval;
	return start_value;
}
// If the start value is less than the end value, increment start value by interval
else if(start_value < end_value)
{
	start_value += interval;
	return start_value;
}
// If the start value equals the end value, exit the script
else if(start_value = end_value)
{
	exit;
}