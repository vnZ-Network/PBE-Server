	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:xingpan-nenglianghexin.s
	//		TaskID:????
	//
	//****************************************

function OnUseItem(){
    $energy = GetPlayerVar ( -1, 3998)
    if $energy == 500
    		BC( "screen", "player", -1, "The Energy Core has been recharged. Talk to Copernicus to activate it." )    
    else
       BC( "screen", "player", -1, "The Energy Core has not been fully recharged. Continue your efforts." )    
    endif    
    
}
 