	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:??
	//		TaskName:HD-JIAOHUDONGZUO-ITEM-61127.s
	//		TaskID:??
	//
	//****************************************

	function OnUseItem(){
		
		//???????????
		$a = IsHaveEmote( -1, 57031 )
		if $a != 0
			BC( "screen", "player", -1, "You have already learned this action." )
			return
		endif
		
		//???????
		$flower = GetPlayerInfo( -1, "flower" )
		if $flower < 200
			BC( "screen", "player", -1, "You Charisma is lower than 200. Can not learn this action." )
			return
		endif
		
		
		$result = SubPlayerInfo( -1, "item", 61127, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddEmote( -1, 57031 )
		BC( "screen", "player", -1, "Action learned: Superhuman" )
	
	}