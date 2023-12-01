	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/16
	//		Author:???
	//		TaskName:Taiwan-item-58108.s
	//		TaskID:??-?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 7
			BC( "screen", "player", -1, "Insufficient empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58108 , 1 )
		if  $info != 0
			return
		endif
		
		AddPlayerInfo( -1 ,"item", 64405 , 1 )	
		AddPlayerInfo( -1 ,"item", 64264 , 10 )
		AddPlayerInfo( -1 ,"item", 64279 , 10 )
		AddPlayerInfo( -1 ,"item", 60510 , 5 )
		AddPlayerInfo( -1 ,"item", 64413 , 3 )
		AddPlayerInfo( -1 ,"item", 63366 , 3 )
		
		$sex = GetPlayerInfo( -1 , "sex" )
		if $sex == 0
			AddPlayerInfo( -1 , "item" , 36702 , 1 )
		else
			AddPlayerInfo( -1 , "item" , 36703 , 1 )
		endif
		
	}