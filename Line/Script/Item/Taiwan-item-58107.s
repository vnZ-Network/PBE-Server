	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/16
	//		Author:???
	//		TaskName:Taiwan-item-58107.s
	//		TaskID:??-?FUN???
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 7
			BC( "screen", "player", -1, "Insufficient empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58107 , 1 )
		if  $info != 0
			return
		endif
		
		AddPlayerInfo( -1 ,"item", 36541 , 1 )	
		AddPlayerInfo( -1 ,"item", 64405 , 1 )
		AddPlayerInfo( -1 ,"item", 6057 , 1 )
		AddPlayerInfo( -1 ,"item", 60504 , 3 )
		AddPlayerInfo( -1 ,"item", 64414 , 2 )
		AddPlayerInfo( -1 ,"item", 63065 , 1 )
		AddPlayerInfo( -1 ,"item", 63366 , 3 )
		
		
	}