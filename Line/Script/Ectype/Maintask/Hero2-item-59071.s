	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/22
	//		Author:??
	//		TaskName:Hero2-item-59071.s
	//		TaskID:???????
	//****************************************
	
	function OnUseItem(){
		
		$time = GetPlayerVar( -1 , 3742 )
		$nowtime = GetSystemTime( "yday" )
		$lv = GetPlayerInfo( -1 , "level" )
		$task = GetTaskCount( -1 )
		
	//????	
		if $lv < 45
			BC( "screen", "player", -1, "Use it after reaching level 45." )
			return
		endif
		
	//??????????	
		if $time == $nowtime
			BC( "screen", "player", -1, "You have used the invitation of Holy War already today." )
			return
		endif
		
	//????????????
		if $task >= 20
			BC( "screen", "player", -1, "Your quest list is full." )
			return
		endif
		
	//???????????????
		$havetask1 = IsTaskAccept( -1, 4475 )
		$havetask2 = IsTaskAccept( -1, 4476 )
		$havetask3 = IsTaskAccept( -1, 4477 )
		
		if $havetask1 == 0
			BC( "screen", "player", -1, "Your  previous quest has not been completed." )
			return
		endif
		
		
		if $havetask2 == 0
			BC( "screen", "player", -1, "Your  previous quest has not been completed." )
			return
		endif
		
		
		if $havetask3 == 0
			BC( "screen", "player", -1, "Your  previous quest has not been completed." )
			return
		endif
		
	//???????,???????	
		$nfo = SubPlayerInfo( -1 , "item" , 59071 , 1 )
		if $nfo != 0
			return
		endif
		
	//?????????
	
		if $lv < 70
			AcceptTask( -1 , 4475)
		else
			if $lv < 95
				AcceptTask( -1 , 4476)
			else
				AcceptTask( -1 , 4477)
			endif
		endif
			
	//???????
		SetPlayerVar( -1 , 3742 , $nowtime )
		
			
	}

