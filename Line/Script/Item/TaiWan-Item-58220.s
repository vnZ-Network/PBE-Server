	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/20
	//		Author:???
	//		TaskName:TaiWan-Item-58220.s
	//		TaskID:1????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 8
			BC( "screen", "player", -1 , "You need at least 8 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58220 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 64264 , 10 )
		AddPlayerInfo( -1 , "item" , 60014 , 3 )
		AddPlayerInfo( -1 , "item" , 2221 , 1 )
		AddPlayerInfo( -1 , "item" , 60001 , 1 )
		AddPlayerInfo( -1 , "item" , 63065 , 1 )
		AddPlayerInfo( -1 , "item" , 64413 , 3 )
		AddPlayerInfo( -1 , "item" , 63366 , 3 )
		AddPlayerInfo( -1 , "item" , 60013 , 5 )	
	}