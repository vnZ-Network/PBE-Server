	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/10
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61134.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57038 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 61134, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57038 )
		BC( "screen", "player", -1, "Action learned: Taunt" )
	
	}