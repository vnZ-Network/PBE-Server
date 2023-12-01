	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/10
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61135.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57039 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 61135, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57039 )
		BC( "screen", "player", -1, "Action learned: Kneel" )
	
	}