#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include common_scripts\utility;

doThreads()
{
toggleRegen();
}

toggleRegen()
{
for(;;)
	{
		self notifyOnPlayerCommand( "AS45", "+actionslot 45" );
		self waittill( "AS45" );
		
		wait 1;
		
if (self.regen == true) {
self.regen = false;
self iPrintlnBold("Ammo Regen ^1Off");

} else if (self.regen == false) {
self.regen = true;
self iPrintlnBold("Ammo Regen ^2On");
		}
	}
}