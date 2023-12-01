	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/21
	//		Author:???
	//		TaskName:Item-HD-63501.s
	//		TaskID:???????
	//
	//****************************************
	
	
	
function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			BC( "screen", "player", -1, "You are not LV30 yet." )
			return
		endif
		
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Quest list is full. Please try again after clearing up your quest list." )
			return
		endif
		
		$PlayerVar = GetPlayerVar( -1, 3718 )
		$Time = GetSystemTime( "yday" )
		if $PlayerVar == $Time
			BC( "screen", "player", -1, "You cannot acquire that any more today." )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", 63501, 1 )
		if $Sub != 0
			return
		endif
		
		SetPlayerVar( -1, 3718, $Time )
		if $level >= 30
			if $level <= 39
				AcceptTask ( -1, 4461 )
			endif
		endif
		
		if $level >= 40
			if $level <= 49
				AcceptTask ( -1, 4460 )
			endif
		endif
		
		if $level >= 50
			if $level <= 64
				AcceptTask ( -1, 4462 )
			endif
		endif
		
		if $level >= 65
			if $level <= 79
				AcceptTask ( -1, 4463 )
			endif
		endif
		
		if $level >= 80
			if $level <= 200
				AcceptTask ( -1, 4464 )
			endif
		endif
		
		AcceptTask ( -1, 4457 )
		AcceptTask ( -1, 4458 )
		AcceptTask ( -1, 4459 )
		
	}	