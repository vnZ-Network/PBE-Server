	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/20
	//		Author:???
	//		TaskName:TaiWan-Item-58221.s
	//		TaskID:1????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 6
			BC( "screen", "player", -1 , "You need at least 6 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58221 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 60493 , 3 )
		AddPlayerInfo( -1 , "item" , 2 , 3 )
		AddPlayerInfo( -1 , "item" , 58014 , 1 )
		AddPlayerInfo( -1 , "item" , 60510 , 5 )
		AddPlayerInfo( -1 , "item" , 6444 , 1 )
		$sex = GetPlayerInfo( -1 , "sex" )
		if $sex == 0
			AddPlayerInfo( -1 , "item" , 36376 , 1 )
		else
			AddPlayerInfo( -1 , "item" , 36704 , 1 )
		endif
		
	}