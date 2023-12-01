 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/8
	//		Author:??
	//		TaskName:ITEM-63393.s
	//		TaskID:?????
	//****************************************
	
	
	//24 ?????
	function OnUseItem(){
		
		
	
		//2009?9?1????????
		$Now_Month =  GetSystemTime( "month" )
		//
		$Now_Year =  GetSystemTime( "year" )
		
		if $Now_Year != 2009
			BC( "screen", "player", -1, "Your Knowledge Champion Card has expired" )
			return
		endif
		if $Now_Month >= 9
			BC( "screen", "player", -1, "Your Knowledge Champion Card has expired" )
			return
		endif
		
		
		$is_use = GetPlayerVar(-1 , 24)
		
		if $is_use == 1
			BC( "screen", "player", -1, "You have already used your Knowledge Champion Card" )
			return
		endif
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots" )
			return
		endif
		
		$del = SubPlayerInfo ( -1,"item", 63393, 1 )
		if  $del != 0
			return
		endif
		
		$level = GetPlayerInfo(-1 , "level")
		$a = $level * $level
		$b = $level * $a 
		$add_exp = $b * 10
		
		$add_givepoint = $level * $level
		
		
		AddPlayerInfo(-1 , "item" ,36562 , 1 )
		AddPlayerInfo(-1 , "exp" ,$add_exp )
		AddPlayerInfo(-1 , "givepoint" ,$add_givepoint )
		BC( "screen", "player", -1, "You gained Credit by: " , $add_givepoint )
		BC( "chat", "player", -1, "You gained Credit by: " , $add_givepoint )
		SetPlayerVar(-1 , 24 , 1)
	}