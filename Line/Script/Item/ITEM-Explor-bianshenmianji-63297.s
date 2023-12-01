	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/17
	//		Author:???
	//		TaskName:ITEM-Explor-bianshenmianji-63297.s
	//		TaskID:?? 63297
	//****************************************
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		if $mapid != 186
			BC( "screen", "player", -1, "The item is available only in Outer Starway." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 63297 , 1 )
		if  $info != 0
			return
		endif
		AddMonster(32122, 1, 186, $x, $y, 1 )
		
	}