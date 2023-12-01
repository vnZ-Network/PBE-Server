	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/20
	//		Author:???
	//		TaskName:TaiWan-Item-58218.s
	//		TaskID:1????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 8
			BC( "screen", "player", -1 , "You need at least 8 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58218 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 64402 , 1 )
		AddPlayerInfo( -1 , "item" , 60493 , 3 )
		AddPlayerInfo( -1 , "item" , 60504 , 3 )
		AddPlayerInfo( -1 , "item" , 64279 , 10 )
		AddPlayerInfo( -1 , "item" , 63066 , 1 )
		AddPlayerInfo( -1 , "item" , 64414 , 3 )
		AddPlayerInfo( -1 , "item" , 6523 , 3 )
		AddPlayerInfo( -1 , "item" , 60029 , 10 )
	}