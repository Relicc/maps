#include common_scripts\utility;
#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

doThreads()
{
    level thread screambold();
    level thread saybold();
    level thread scream();
}

screambold()
{
        level endon( "game_ended" );
       
        for(;;)
        {
                setdvar("screambold", "");
 
                while( getdvar("screambold") == "" )
                        wait .5;
                col = RandomInt(6);
                col1 = RandomInt(6);
                col2 = RandomInt(6);
                col3 = RandomInt(6);
                col4 = RandomInt(6);
                screamboldtxt = getdvar("screambold");
                iPrintLnBold("^" + col +screamboldtxt);
                iPrintLnBold("^" + col1 +screamboldtxt);
                iPrintLnBold("^" + col2 +screamboldtxt);
                iPrintLnBold("^" + col3 +screamboldtxt);
                iPrintLnBold("^" + col4 +screamboldtxt);
                setdvar("screambold", "");
 
                wait .5;
        }
}
saybold()
{
        level endon( "game_ended" );
       
        for(;;)
        {
                setdvar("saybold", "");
 
                while( getdvar("saybold") == "" )
                        wait .5;
                sayboldtxt = getdvar("saybold");
                iPrintLnBold(sayboldtxt);
                setdvar("saybold", "");
 
                wait .5;
        }
}
scream()
{
        level endon( "game_ended" );
       
        for(;;)
        {
                setdvar("scream", "");
 
                while( getdvar("scream") == "" )
                        wait .5;
                col = RandomInt(6);
                col1 = RandomInt(6);
                col2 = RandomInt(6);
                col3 = RandomInt(6);
                col4 = RandomInt(6);
                screamtxt = getdvar("scream");
                iPrintLn("^" + col +screamtxt);
                iPrintLn("^" + col1 +screamtxt);
                iPrintLn("^" + col2 +screamtxt);
                iPrintLn("^" + col3 +screamtxt);
                iPrintLn("^" + col4 +screamtxt);
                setdvar("scream", "");
 
                wait .5;
        }
}
