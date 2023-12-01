	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/02
	//		Author:??
	//		TaskName:NPC-qianmi1782.s
	//		TaskID:????
	//
	//****************************************
	//
	function OnRequest(){
	
		$info = GetFansCardType(-1 ,"fans")
		if $info == 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif

	}
	
	//??????
	function OnOption0(){
	
		Cmd(-1 , "fanscard 1")

	}
	
	//??????,???????
	function OnOption1(){
		$is_get = GetPlayerVar(-1 , 21)
		$info = GetFansCardType(-1 ,"fans")
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		if $info == 0
			if $is_get != 0
				BC("dialogbox", "player", -1, "You have already taken the reward.")
				return
			else
				AddPlayerInfo(-1 , "item" , 59051 , 1)
				BC("dialogbox", "player", -1, "Congratulations! You've obtained an Elite Card! Check your Bag.")
				SetPlayerVar(-1 , 21 , 1)
			endif
		else
			if $info == 1
				BC("dialogbox", "player", -1, "You can't use an Elite Card.")
			else
				BC("dialogbox", "player", -1, "Returned value error.")
			endif
		endif

	}
	
	