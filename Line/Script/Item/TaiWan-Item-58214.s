	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/24
	//		Author:???
	//		TaskName:TaiWan-Item-58214.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 9
			BC( "screen", "player", -1, "You need at least 9 empty slots in your bag." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 58214 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 ,"item", 36546 , 1 )	
		AddPlayerInfo( -1 ,"item", 64402 , 1 )
		AddPlayerInfo( -1 ,"item", 60014 , 3 )
		AddPlayerInfo( -1 ,"item", 2 , 3 )
		AddPlayerInfo( -1 ,"item", 2211 , 1 )
		AddPlayerInfo( -1 ,"item", 2141 , 1 )
		AddPlayerInfo( -1 ,"item", 60004 , 5 )
		AddPlayerInfo( -1 ,"item", 6424 , 3 )
		AddPlayerInfo( -1 ,"item", 6429 , 3 )	
	}