	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/24
	//		Author:???
	//		TaskName:TaiWan-Item-58213.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 8
			BC( "screen", "player", -1, "You need at least 8 empty slots in your bag." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 58213 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 ,"item", 36540 , 1 )	
		AddPlayerInfo( -1 ,"item", 71 , 1 )
		AddPlayerInfo( -1 ,"item", 6392 , 1 )
		AddPlayerInfo( -1 ,"item", 6388 , 1 )
		AddPlayerInfo( -1 ,"item", 64264 , 10 )	
		AddPlayerInfo( -1 ,"item", 64279 , 10 )
		AddPlayerInfo( -1 ,"item", 60013 , 5 )
		AddPlayerInfo( -1 ,"item", 60004 , 3 )	
	}