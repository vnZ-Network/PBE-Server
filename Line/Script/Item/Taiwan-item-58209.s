	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/15
	//		Author:???
	//		TaskName:Taiwan-item-58209.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 1
			BC( "screen", "player", -1, "Insufficient empty slots in your bag." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 58209 , 1 )
		if  $info != 0
			return
		endif
		
		AddPlayerInfo( -1 ,"item", 64268 , 5 )	
		
		
	}