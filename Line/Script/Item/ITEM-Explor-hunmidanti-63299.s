	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/17
	//		Author:???
	//		TaskName:ITEM-Explor-hunmidanti-63299.s
	//		TaskID:???? 63299
	//****************************************
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo( -1, "mapid")
		if $mapid != 186
			BC( "screen", "player", -1, "The item is available only in Outer Starway." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 63299 , 1 )
		if  $info != 0
			return
		endif
		UseSkill(-1,8581,1)
		
	}