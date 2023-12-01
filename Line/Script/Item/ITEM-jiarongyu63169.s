	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/08
	//		Author:??
	//		TaskName:ITEM-jiarongyu63169.s
	//		TaskID:?????63169???
	//
	//****************************************
	
	
	function OnUseItem(){

		$revalue = SubPlayerInfo( -1, "item", 63169, 1 )
		if $revalue == 0
			AddPlayerInfo( -1, "prestige", 40 , 2500)
			BC( "screen", "player", -1, "You gained 2500 Honor!" )
		endif
	}