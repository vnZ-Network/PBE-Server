	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/24
	//		Author:???
	//		TaskName:TaiWan-Item-58215.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 6
			BC( "screen", "player", -1, "You need at least 6 empty slots in your bag." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 58215 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 ,"item", 64264 , 10 )	
		AddPlayerInfo( -1 ,"item", 60493 , 3 )
		AddPlayerInfo( -1 ,"item", 64415 , 1 )
		AddPlayerInfo( -1 ,"item", 64279 , 15 )
		AddPlayerInfo( -1 ,"item", 60510 , 5 )	
		AddPlayerInfo( -1 ,"item", 63366 , 2 )	
	}