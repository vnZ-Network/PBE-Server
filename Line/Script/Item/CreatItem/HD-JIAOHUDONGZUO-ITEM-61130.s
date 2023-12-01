	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61130.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57034 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//???????
		$flower = GetPlayerInfo( -1, "flower" )
		if $flower < 400
			BC( "screen", "player", -1, "You Charisma is lower than 400. Can not learn this action." )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 61130, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57034 )
		BC( "screen", "player", -1, "Action learned: Charge" )
	
	}