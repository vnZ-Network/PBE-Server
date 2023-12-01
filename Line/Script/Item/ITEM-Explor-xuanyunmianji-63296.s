	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/17
	//		Author:???
	//		TaskName:ITEM-Explor-xuanyunmianji-63296.s
	//		TaskID:???? 63296
	//****************************************
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		if $mapid != 186
			BC( "screen", "player", -1, "The item is available only in Outer Starway." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 63296 , 1 )
		if  $info != 0
			return
		endif
		UseSkill( -1, 8578 , 1 )
		
	}