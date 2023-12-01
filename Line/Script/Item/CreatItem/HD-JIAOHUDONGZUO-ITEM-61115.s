	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61115.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57018 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//????????
		$level = GetLoveLevel( -1 )
		if $level < 1
			BC( "screen", "player", -1, "Your Bliss is lower than LV1." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 61115, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57018 )
		BC( "screen", "player", -1, "Action learned: Narcissism" )
	
	}