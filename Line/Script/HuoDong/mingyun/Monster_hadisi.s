	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/10
	//		Author:???
	//		TaskName:???
	//		TaskID:Monster_hadisi.s
	//
	//****************************************

	function OnDead(){

//????BOSS???	81
//????BOSS???ID	82
//????:	83

		$month = GetSystemTime( "month" )
		$mday = GetSystemTime( "mday" )
		$hour = GetSystemTime( "hour" )
		$minute = GetSystemTime( "minute" )
		$second = GetSystemTime( "second" )

//		if $month != 9
//			return
//		endif
//		if $mday < 16
//			return
//		endif

		$time = $second
		$time_minute = $minute * 60
		$time += $time_minute
		$time_hour = $hour * 3600
		$time += $time_hour
//		BC("chat","player",-1,"time=",$time)
		SetGlobalVar(81,$time)
		$born_time = GetGlobalVar(83)
		$usetime = $time - $born_time
		if $usetime < 0
			return
			BC("screen","servergroup",-1,"Hades escaped!")
			BC("chat","servergroup",-1,"Hades escaped!")
		endif

		$use_hour = $usetime / 3600
		$temp = $use_hour * 3600
		$usetime -= $temp
		$use_minute = $usetime / 60
		$temp = $use_minute * 60
		$use_second = $usetime - $temp

		BC("scrollbar", "server", -1, "Hades was stopped by a band of valiant warriors! The battle lasted " $use_hour "Hour" $use_minute "Minute" $use_second " seconds!")
		BC("screen", "server", -1, "Hades was stopped by a band of valiant warriors! The battle lasted " $use_hour "Hour" $use_minute "Minute" $use_second " seconds!")

		$haederid = GetPlayerID()
		#name = GetPlayerInfo($haederid,"name")
		BC("screen","servergroup",-1,#name," killed Hades! Their name shall forever be recorded in Atlantis history!")
		BC("chat","servergroup",-1,#name," killed Hades! Their name shall forever be recorded in Atlantis history!")
		$head = GetPlayerVar( $haederid , 4030)
		$head = $head  + 2500
		SetPlayerVar( $haederid , 4030 , $head )
		SetGlobalVar(82,$haederid)
		BC("messagebox","player",-1,"You killed Hades! Received 2,500 points! If you were the fastest to kill Hades in your server, you'll be entered into the hall of fame!")
		$head_given = 1

		$isteam = IsPlayerInTeam(-1)
			if $isteam == 0
				$key = 0
				while $key < 6
				//-----------
//					BC("chat","player",$Men1,"key = ",$key)
					$Men1 = GetTeamMemberID(-1,$key)
					if $Men1 != -1
						$dist = GetPlayerDistance($haederid,$Men1)
						if $dist < 999
							AddTarotCard($Men1,2024)
							BC("chat","player",$Men1,"Congratulations, your team killed Hades! You received ")
						endif
					endif
					$key += 1
				//-----------
				endwhile
			else
				AddTarotCard(-1,2024)
				BC("chat","player",-1,"Congratulations, your team killed Hades! You received ")
			endif

	}