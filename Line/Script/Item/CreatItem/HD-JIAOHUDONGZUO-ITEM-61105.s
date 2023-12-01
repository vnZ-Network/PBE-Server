	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61105.s
	//		TaskID:???
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57008 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 61105, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57008 )
		BC( "screen", "player", -1, "Action learned: Stretch" )
	
	}