	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61108.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57011 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//????????
		$level = GetLoveLevel( -1 )
		if $level < 10
			BC( "screen", "player", -1, "Your Bliss is lower than LV10." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 61108, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57011 )
		BC( "screen", "player", -1, "Action learned: Throw Kiss" )
	
	}