	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/15
	//		Author:???
	//		TaskName:Taiwan-item-58206.s
	//		TaskID:?????????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 2
			BC( "screen", "player", -1, "You need at least 2 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58206 , 1 )
		if  $info != 0
			return
		endif
		
		AddPlayerInfo( -1 ,"item", 2141 , 1 )	
		AddPlayerInfo( -1 ,"item", 61046 , 2 )
		
	}