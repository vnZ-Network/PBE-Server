	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/16
	//		Author:???
	//		TaskName:Taiwan-item-58106.s
	//		TaskID:??-?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 3
			BC( "screen", "player", -1, "Insufficient empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58106 , 1 )
		if  $info != 0
			return
		endif
		
		AddPlayerInfo( -1 ,"item", 62502 , 1 )	
		AddPlayerInfo( -1 ,"item", 64415 , 2 )
		AddPlayerInfo( -1 ,"item", 60013 , 5 )
		
		
	}