	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/24
	//		Author:???
	//		TaskName:TaiWan-Item-58212.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 8
			BC( "screen", "player", -1, "You need at least 8 empty slots in your bag." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 58212 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 ,"item", 36548 , 1 )	
		AddPlayerInfo( -1 ,"item", 64404 , 1 )
		AddPlayerInfo( -1 ,"item", 6392 , 1 )
		AddPlayerInfo( -1 ,"item", 6388 , 1 )
		AddPlayerInfo( -1 ,"item", 63422 , 3 )
		AddPlayerInfo( -1 ,"item", 60510 , 5 )
		AddPlayerInfo( -1 ,"item", 1 , 30 )
		AddPlayerInfo( -1 ,"item", 64413 , 3 )		
	}