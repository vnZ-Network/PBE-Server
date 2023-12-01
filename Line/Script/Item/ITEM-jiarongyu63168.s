	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/08
	//		Author:??
	//		TaskName:ITEM-jiarongyu63168.s
	//		TaskID:?????63168???
	//
	//****************************************
	
	
	function OnUseItem(){

		$revalue = SubPlayerInfo( -1, "item", 63168, 1 )
		if $revalue == 0
			AddPlayerInfo( -1, "prestige", 40 , 1000)
			BC( "screen", "player", -1, "You gained 1000 Honor!" )
		endif
	}