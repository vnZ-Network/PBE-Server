	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/1/28
	//		Author:??
	//		TaskName:????-????
	//		TaskID:62148-langmanbaobei.s
	//
	//****************************************	
	
	function OnUseItem(){

		
		$item = 62148
		$rider = 1227

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