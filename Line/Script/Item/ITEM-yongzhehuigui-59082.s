	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/28
	//		Author:??
	//		TaskName:ITEM-yongzhehuigui-59082.s
	//		TaskID:?????????
	//
	//****************************************

	function OnUseItem(){

	$level = GetPlayerInfo( -1, "level" )
	$Now_Hour =  GetSystemTime( "hour" )
	$Now_Days = GetSystemTime("yday")
	//????????????
	$Last_Days = GetPlayerVar(-1 , 3746)
	//???????????
	$Can_Open = GetPlayerVar( -1 , 3598)
	$Task = IsTaskAccept(-1 , 4426)
	$Or_Item = GetPlayerVar( -1 ,75)

	//??????????
	if $Or_Item == 0
		$temp = $Can_Open
		$Can_Open = $Can_Open % 7
		$Can_Open = $temp - $Can_Open
		$Can_Open = $Can_Open / 7
		SetPlayerVar( -1 , 75 , 1)
			//????-START
			$TJ_join_number = GetGlobalVar(903)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(903 , $TJ_join_number)
			//????-END
	endif


	//??????????????
	if $Last_Days == $Now_Days
		BC( "screen", "player", -1,"You have opened Returned Warrior Certificate today." )
		return
	endif

	if $level < 45
		BC( "screen", "player", -1,"Players LV45 and above can open a Returned Warrior Certificate." )
		return
	endif

	if $Task == 0
		BC( "screen", "player", -1,"You have begun the Returned Warrior Certificate quest. Make sure to use the Returned Warrior Certificate when you're done." )
		return
	endif

	if $Last_Days != $Now_Days
		//???????1?,??????
		if $Can_Open <= 1
			$result = AcceptTask( -1 , 4426 )
			if $result == 0
				$Can_Open = $Can_Open - 1
				BC( "screen", "player", -1,"You've received the Warrior's Return quest. Remain online for 2 hr. and you'll be rewarded with a lot of EXP!" )
					SetPlayerVar( -1 , 3746 , $Now_Days)
					SubPlayerInfo( -1 , "item" , 59082 , 1)
				endif
			else
				$result = AcceptTask( -1 , 4426 )
				if $result == 0
					$Can_Open = $Can_Open - 1
					BC( "screen", "player", -1,"You've received the Warrior's Return quest. Remain online for 2 hr. and you'll be rewarded with a lot of EXP!" )
						SetPlayerVar( -1 , 3746 , $Now_Days)
						SetPlayerVar( -1 , 3598 , $Can_Open)
						BC( "screen", "player", -1,"You have opened the Returned Warrior Certificate " , $Can_Open , " times today." )
				endif
			endif
		endif

	}