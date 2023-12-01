 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/6/29
	//		Author:???
	//		TaskName:ITEM-trump-xuanwu-59833.s
	//		TaskID:????  ??
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level")
		if $level < 100
			BC( "screen", "player", -1, "You must reach LV100 before you can control the power of the Obsidian Turtle Soul." )
			return
		endif
		$info1 = AddTrump( -1, 11023, 1 )
		if $info1 != 0
			BC( "screen", "player", -1, "You have already had it." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" ,59833, 1 )
		if  $info != 0
			return
		endif
		
		BC( "screen", "player", -1, "You have acquired an Obsidian Turtle Soul Relic." )
		
	}