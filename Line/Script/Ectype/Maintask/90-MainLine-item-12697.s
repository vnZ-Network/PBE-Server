	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/15
	//		Author:???
	//		TaskName:90-MainLine-item-12697.s
	//		TaskID:  ??
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		if  $mapid != 245
			BC( "screen", "player", -1, "You can only use Stealth Potion in the Khufu Desert." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 12697 , 1 )
		if  $info != 0
			return
		endif
		AddStatus( -1 , 10719 , 1 )
	
	}