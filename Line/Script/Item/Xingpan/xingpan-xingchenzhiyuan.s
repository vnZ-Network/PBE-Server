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
//??????????
		$count = GetPlayerInfo( -1, "item", 59886 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have an Energy Core." )
			return
		endif
		
//??????????>=500
		$energy = GetPlayerVar( -1, 3998)
		
		if $energy >= 500
		   BC( "screen", "player", -1, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
		   return
//????
		else
				 $energy = $energy + 100
				 SetPlayerVar( -1, 3998, $energy)
				 SubPlayerInfo( -1, "item", 59887, 1 )		
			if $energy >= 500
		   	 SetPlayerVar(-1, 3998, 500)
		  	 BC( "screen", "player", -1, "Energy Core charge: ",$energy,"/500")
			else	
		   	 BC( "screen", "player", -1, "Energy Core charge: ",$energy,"/500")
			endif
		endif
					   
//??????????
	  if $energy == 500
		  BC( "screen", "player", -1, "The Energy Core has been recharged. Talk to Copernicus to activate it.")
		endif
}
