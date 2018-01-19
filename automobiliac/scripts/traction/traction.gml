// Traction script

// Determine turn speed by car speed 
// This is a really sketchy way to handle traction limits 
// There is no natural drifting yet

// Note: variable len is the measurement of the car's speed

// Gear and speed ranges for reference , this is not based off of gear but speed the car is traveling
// 1st 0-10
// 2nd 10-16
// 3rd 16-22
// 4th 22-26
// 5th 25-29
// 6th 29-31 

if(len > 0 && len <= 10)
{
	turnSpd = .4
}
if(len > 10 && len <= 20)
{
	turnSpd = .2
}
if(len > 20 && len <= 25)
{
	turnSpd = .1
}
if(len >= 25)
{
	turnSpd = .05
}
