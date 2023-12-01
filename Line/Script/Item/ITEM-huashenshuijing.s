	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/31
	//		Author:???
	//		TaskName:ITEM-huashenshuijing.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		
//		$lastday = GetPlayerVar( -1 , 4078 )
//		$nowday = GetSystemTime( "yday" )
//		$num = GetPlayerVar( -1, 3286 )
		
//		if $lastday != $nowday
			$power1 = GetPlayerVar( -1, 3876 )
			$power2 = GetPlayerVar( -1, 3298 )
			$power = $power1 + $power2
			if $power == 100
				BC( "screen", "player", -1, "Avatar Energy Stone fully recharged." )
				return
			endif
			if $power < 70
				$power = $power + 30
				SubPlayerInfo( -1, "item", 63789, 1 )
				AddPlayerInfo(-1,"unitemp",$power )
			else
				SubPlayerInfo( -1, "item", 63789, 1 )
				AddPlayerInfo(-1,"unitemp",100 )
			endif
//			SetPlayerVar( -1, 4078, $nowday )
//			SetPlayerVar( -1, 3286, 1 )
//		else
//			if $num == 10
//				BC( "screen", "player", -1, "GUID:06631000001" )
//				return
//			else
//				$power = GetPlayerVar( -1, 3876 )
//				if $power == 100
//					BC( "screen", "player", -1, "Avatar Energy Stone fully recharged." )
//					return
//				endif
//				if $power < 70
//					$power = $power + 30
//					SubPlayerInfo( -1, "item", 63789, 1 )
//					AddPlayerInfo(-1,"unitemp",$power )
//				else
//					SubPlayerInfo( -1, "item", 63789, 1 )
//					AddPlayerInfo(-1,"unitemp",100 )
//				endif
//				$num = $num + 1
//				SetPlayerVar( -1, 3286, $num )
//			endif
//		endif
		
	}