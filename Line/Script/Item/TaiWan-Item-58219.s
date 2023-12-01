	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/20
	//		Author:???
	//		TaskName:TaiWan-Item-58219.s
	//		TaskID:1????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 2
			BC( "screen", "player", -1 , "You need at least 2 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58219 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 62027 , 1 )
		AddPlayerInfo( -1 , "item" , 62034 , 1 )
		
	}