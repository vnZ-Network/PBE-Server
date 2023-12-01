	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/20
	//		Author:???
	//		TaskName:TaiWan-Item-58217.s
	//		TaskID:1????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 7
			BC( "screen", "player", -1 , "You need at least 7 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58217 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 6392 , 1 )
		AddPlayerInfo( -1 , "item" , 6388 , 1 )
		AddPlayerInfo( -1 , "item" , 2141 , 1 )
		AddPlayerInfo( -1 , "item" , 60038 , 1 )
		AddPlayerInfo( -1 , "item" , 60013 , 5 )
		AddPlayerInfo( -1 , "item" , 60029 , 3 )
		$sex = GetPlayerInfo( -1 , "sex" )
		if $sex == 0
			AddPlayerInfo( -1 , "item" , 36378 , 1 )
		else
			AddPlayerInfo( -1 , "item" , 36701 , 1 )
		endif
		
	}