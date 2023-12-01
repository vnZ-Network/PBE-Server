	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/14
	//		Author:??
	//		TaskName:????-????
	//		TaskID:62137-heer.s
	//
	//****************************************	
	
	
	function OnUseItem(){

		
		$item = 62138
		$rider = 1196

		$r = AddRider(-1,$rider)
			if $r != 0
				BC( "screen", "player", -1, "Your mount list is full!" )
				return
			endif
			
		$revaluet = SubPlayerInfo( -1, "item", $item, 1 )
			if $revaluet != 0
				BC( "screen", "player", -1, "Your mount list is full!" )
				return
			endif
		
		BC( "screen", "player", -1, "A new mount has been added to your mount list!" )
			
	
}