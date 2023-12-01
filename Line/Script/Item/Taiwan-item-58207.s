	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/15
	//		Author:???
	//		TaskName:Taiwan-item-58207.s
	//		TaskID:??????????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 2
			BC( "screen", "player", -1, "You need at least 2 empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58207 , 1 )
		if  $info != 0
			return
		endif
		
		AddPlayerInfo( -1 ,"item", 60013 , 2 )	
		AddPlayerInfo( -1 ,"item", 60029 , 2 )
		
	}