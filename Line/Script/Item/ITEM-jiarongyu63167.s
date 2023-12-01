	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/08
	//		Author:??
	//		TaskName:ITEM-jiarongyu63167.s
	//		TaskID:?????63167???
	//
	//****************************************
	
	
	function OnUseItem(){

		$revalue = SubPlayerInfo( -1, "item", 63167, 1 )
		if $revalue == 0
			AddPlayerInfo( -1, "prestige", 40 , 500)
			BC( "screen", "player", -1, "You gained 500 Honor!" )
		endif
	}