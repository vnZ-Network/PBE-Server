	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/24
	//		Author:???
	//		TaskName:TaiWan-Item-58211.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 5
			BC( "screen", "player", -1, "You need at least 5 empty slots in your bag." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 58211 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 ,"item", 64402 , 1 )	
		AddPlayerInfo( -1 ,"item", 60013 , 3 )
		AddPlayerInfo( -1 ,"item", 60510 , 3 )
		AddPlayerInfo( -1 ,"item", 6046 , 1 )
		AddPlayerInfo( -1 ,"item", 6048 , 1 )	
	}