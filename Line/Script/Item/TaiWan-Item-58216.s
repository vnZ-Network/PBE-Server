	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/20
	//		Author:???
	//		TaskName:TaiWan-Item-58216.s
	//		TaskID:1????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 6
			BC( "screen", "player", -1 , "You need at least 6 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58216 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 71 , 1 )
		AddPlayerInfo( -1 , "item" , 2 , 3 )
		AddPlayerInfo( -1 , "item" , 2211 , 1 )
		AddPlayerInfo( -1 , "item" , 60504 , 3 )
		AddPlayerInfo( -1 , "item" , 60004 , 3 )
		AddPlayerInfo( -1 , "item" , 6439 , 1 )
		
	}