	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/17
	//		Author:??
	//		TaskName:ITEM-zidongshiqu63217.s
	//		TaskID:??????
	//
	//****************************************
	
	
	
	function OnUseItem(){

		$result = SubPlayerInfo( -1, "item", 63217 , 1)
		if $count != 0
			BC( "screen", "player", -1, "You don't have that" )
			return
		endif
		AddStatus(-1 , 11727 , 1)  
		
		
		
	}


