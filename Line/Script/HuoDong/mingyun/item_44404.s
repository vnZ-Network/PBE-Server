	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/24
	//		Author:???
	//		TaskName:item_44404.s
	//		TaskID:?????
	//
	//****************************************
	function OnUseItem(){

		$44404 = GetPlayerInfo( -1, "item", 44404 )
		//?????????
		if $44404 < 1
			BC( "dialogbox", "player", -1, "Sorry, you don't have enough Golden Keys!" )
			return
		endif

		//????????
		$del_count = SubPlayerInfo( -1, "item", 44404, 1 )

		//??????????
		if $del_count != 0
			return
		endif

		$revalue = AddPlayerInfo( -1, "exp", 10000 )
}