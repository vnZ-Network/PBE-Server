	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:??
	//		TaskName:GOD-Item-59134.s
	//		TaskID:????????(??)
	//****************************************
	
	function OnUseItem(){
		//????????????????
		$result = HaveTitle( -1 , 21 )
		if $result != 0
			BC( "screen", "player", -1, "You can only use the [Nifhim's Call] scroll after you've acquired the Demigod title, and are above LV70." )
			return
		endif
		
		//28??????
        $today_mday = GetSystemTime( "mday" )
        if $today_mday != 28
                BC( "screen", "player", -1, "You can only use the [Nifhim's Call] scroll on the 28th of every month." )
                return
        endif

             
        
       //???????2516??
		$task = IsTaskAccept ( -1 , 2519 )
		if $task == 0
			BC( "screen", "player", -1, "You have already taken the Nifhim's Hope quest. You can not use the scroll again." )
			return
		endif
		
		//??????????20?
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "screen", "player", -1, "You have taken more than 20 quests. You can not take more." )
			return
		endif
		
		$today_time = GetSystemTime( "yday" )
		$quest_time =  GetPlayerVar( -1	, 3908)
		
		if $today_time == $quest_time
			BC( "screen", "player", -1, "You have already taken this quest. You can not take it again." )
			return
		endif
		
		
		
        //??????????(??)??
		$nfo = SubPlayerInfo ( -1 , "item" , 59134 , 1 )
		if $nfo != 0
			return
		endif
		
		//????????2519???
		AcceptTask ( -1 ,  2519 )
		SetPlayerVar( -1, 3908, $today_time )
		
	}