	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/1/9
	//		Author:??
	//		TaskName:????-?????
	//		TaskID:62146-sileipuniya.s
	//
	//****************************************	
	
	function OnUseItem(){

		
		$item = 62146
		$rider = 2004

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