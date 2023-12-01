	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/29
	//		Author:???
	//		TaskName:Vip-Item-59619.s
	//		TaskID:????VIP???    
	//
	//****************************************
	
	
	function OnUseItem(){
		$item = GetPlayerInfo(-1 , "item" ,59789 )
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You must have at least 1 free Bag slot." )
			return
		endif
		
		if $item < 200
			BC( "screen", "player", -1, "You have less than 200 Materials." )
			return
		endif
		
		$result = SubPlayerInfo(-1 , "item" , 59789 , 200)
		
		if $result == 0
			AddPlayerInfo(-1 ,"item",59785 , 1)
			BC( "chat", "player", -1, "Obtained one Construction Material" )
		endif				
	}
