	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/08
	//		Author:??
	//		TaskName:ITEM-jiarongyu63166.s
	//		TaskID:?????63166???
	//
	//****************************************
	
	
	function OnUseItem(){

		$revalue = SubPlayerInfo( -1, "item", 63166, 1 )
		if $revalue == 0
			AddPlayerInfo( -1, "prestige", 40 , 300)
			BC( "screen", "player", -1, "You gained 300 Honor!" )
		endif
	}
	
	