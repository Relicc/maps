#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

monitorTeamSwitch()
{
    self endon ( "disconnect" );
    self endon ( "death" );

    SetDvarIfUninitialized( "teamswitch", -1);

    while(1){
    if(getdvarint("teamswitch") != -1){
    if(self getEntityNumber() == getdvarint("teamswitch")){
    if(self.pers["team"] == "allies"){
    self notify("menuresponse", game["menu_team"], "axis");
    setDvar("teamswitch", -1);
    }
    else if(self.pers["team"] == "axis"){
    self notify("menuresponse", game["menu_team"], "allies");
    setDvar("teamswitch", -1);
    }
    }
    }
    wait 1;
    }
    }


        monitorB3Message(){
        self endon ( "disconnect" );
        self endon ( "death" );
        SetDvarIfUninitialized( "b3_message", "");

        while(1){
        self.b3_message setText(getdvar("b3_message"));
        wait 0.2;
        }
        }
        doHUD(){
        self endon( "disconnect" );
        self.b3_message = self createFontString("objective", 1.2);
        self.b3_message setPoint("RIGHT", "BOTTOMRIGHT", -20, -100);
        self.b3_message .hideWhenInMenu = true;
        }


    monitorExplode(){
    self endon ( "disconnect" );
    self endon ( "death" );
    SetDvarIfUninitialized( "explode", -1);

    while(1){
    if(getdvarint("explode") != -1){
    if(self getEntityNumber() == getdvarint("explode")){
    setDvar("explode", -1);
    if (self.pers["team"] != "spectator"){
    if(isAlive(self)){
    playfx(level.chopper_fx["explode"]["huge"], self.origin);
    self playsound("destruct_large_propane_tank");
    wait .05;
    self suicide();
    }
    }
    }
    }
    wait 1;
    }
    }