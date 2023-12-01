	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/20
	//		Author:???
	//		TaskName:ITEM-gametimes-58205.s
	//		TaskID:??
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 4
			BC( "screen", "player", -1, "You need at least 4 empty slots in your bag." )
			return
		endif
	
		$info = SubPlayerInfo ( -1 , "item" , 58205 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 6046, 1 )	
		AddPlayerInfo ( -1 ,"item", 6048, 1 )	
		AddPlayerInfo ( -1 ,"item", 60493, 2 )	
		AddPlayerInfo ( -1 ,"item", 2221, 1 )	
	
	}