	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61110.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57013 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//????????
		$level = GetLoveLevel( -1 )
		if $level < 15
			BC( "screen", "player", -1, "Your Bliss is lower than LV15." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 61110, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57013 )
		BC( "screen", "player", -1, "Action learned: Shy" )
	
	}