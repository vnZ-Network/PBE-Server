	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61133.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57037 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//???????
		$flower = GetPlayerInfo( -1, "flower" )
		if $flower < 300
			BC( "screen", "player", -1, "You Charisma is lower than 300. Can not learn this action." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 61133, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57037 )
		BC( "screen", "player", -1, "Action learned: Possum" )
	
	}