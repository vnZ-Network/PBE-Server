	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/18
	//		Author:??
	//		TaskName:ITEM-shuaguai63242.s
	//		TaskID:????63242
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )
		
		
		if $map_id != 154
			BC( "screen", "player", -1, "Available only in Bountyhunter event." )
			return
		endif
		
		$revalue = SubPlayerInfo(-1,"item", 63242 , 1)
		if $revalue == 0
			AddMonster( 30163, 1, $map_id, $x, $y, 0 ,0)
		endif


	}
