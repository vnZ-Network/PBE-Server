	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/20
	//		Author:???
	//		TaskName:Frozen-NPC-1928.s
	//		TaskID: ????
	//
	//****************************************
	
	function OnRequest(){
			
		$week = GetSystemTime( "week" )
		$hour = GetSystemTime( "hour" )
		$minute =  GetSystemTime( "minute")
		$line = GetServerLineID()
		if $week != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $line != 4
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $hour < 20
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $hour == 20
			if $minute < 2
				DisableNpcOption(0)
				DisableNpcOption(1)
			endif
		endif
		if $hour == 21
			DisableNpcOption(1)
		endif
		if $hour >= 22
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$Start = IsFrozenFortStart()
		if $Start == -1
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
	}
	
	function OnOption0(){
		$week = GetSystemTime( "week" )
		$hour = GetSystemTime( "hour" )
		$minute =  GetSystemTime( "minute")
		$line = GetServerLineID()
		$yday = GetSystemTime( "yday" )
		if $line != 4
			return
		endif
		if $week != 0
			return
		endif
		if $hour < 20
			return
		endif
		if $hour == 20
			if $minute < 2
				return
			endif
		endif	
		if $hour >= 22
			return
		endif
		$Start = IsFrozenFortStart()
		if $Start == -1
			return
		endif
		// ?? ?? 0  ??????????????
		// ?? ?? 2  ??????
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		$qualification = GetFrozenFortWarPos( -1 )
		$size = GetTeamAreaSize( -1 )
		$id = GetPlayerID()
		$headerID = GetTeamHeaderID( -1 )
		$count = GetTeamMemberCount( -1 )
		$piao1 =  GetServerVar ( 190 )
		$piao1 = $piao1 + 1
		$piao2 =  GetServerVar ( 191 )
		$piao2 = $piao2 + 1
		$piao3 =  GetServerVar ( 192 )
		$piao3 = $piao3 + 1
		$piao4 =  GetServerVar ( 193 )
		$piao4 = $piao4 + 1
		$piao5 =  GetServerVar ( 194 )
		$piao5 = $piao5 + 1
		$piao6 =  GetServerVar ( 195 )
		$piao6 = $piao6 + 1
		if $headerID != $id
			BC( "dialogbox", "player", -1, "Cannot teleport the team in. You are not the party leader." )
			return
		endif
		if $size > 10
			BC( "dialogbox", "player", -1, "Please keep all party member stick together. Some party members are standing too far." )
			return
		endif
		if $qualification == 0
			BC( "dialogbox", "player", -1, "Your guild is not qualified to enter Frozen Plain." )
			return
		endif
		//?????,??63453??
		if $qualification == 1
			$ticket = GetPlayerInfo ( -1 , "item" , 63453  )
			if $ticket < 1
				BC( "dialogbox", "player", -1, "You don't have Fort Glacier Invitation (Red). You cannot enter Arena Zone." )
				return
			endif
			if $piao1 > 5
				BC( "dialogbox", "player", -1, "Fort Glacier Invitation (Red) has been used for 5 times and has expired." )
				return
			endif
			$Men1 = GetTeamMemberID( -1, 0 )
			$Men2 = GetTeamMemberID( -1, 1 )
			$Men3 = GetTeamMemberID( -1, 2 )
			$Men4 = GetTeamMemberID( -1, 3 )
			$Men5 = GetTeamMemberID( -1, 4 )
			$Men6 = GetTeamMemberID( -1, 5 )
			if $Men1 != -1
				$guildid0 = GetPlayerInfo ( $Men1 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men2 != -1
				$guildid0 = GetPlayerInfo ( $Men2 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men3 != -1
				$guildid0 = GetPlayerInfo ( $Men3 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men4 != -1
				$guildid0 = GetPlayerInfo ( $Men4 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men5 != -1
				$guildid0 = GetPlayerInfo ( $Men5 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men6 != -1
				$guildid0 = GetPlayerInfo ( $Men6 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			$delete = SubPlayerInfo ( -1 , "item" , 63453 , 1 )
			if $delete != 0
				return
			endif	
			SetServerVar ( 190 , $piao1 )
			if $Men1 != -1
				FlyToMap( $Men1 , 65 , 52 , 29 )
				
			endif
			if $Men2 != -1
				FlyToMap( $Men2 , 65 , 52 , 29 )
				
			endif
			if $Men3 != -1
				FlyToMap( $Men3 , 65 , 52 , 29 )
				
			endif
			if $Men4 != -1
				FlyToMap( $Men4 , 65 , 52 , 29 )
				
			endif
			if $Men5 != -1
				FlyToMap( $Men5 , 65 , 52 , 29 )
				
			endif
			if $Men6 != -1
				FlyToMap( $Men6 , 65 , 52 , 29 )
				
			endif
		endif
		
		//?????
		if $qualification == 2
			$ticket = GetPlayerInfo ( -1 , "item" , 63456 )
			if $ticket < 1
				BC( "dialogbox", "player", -1, "You don't have Fort Glacier Invitation (Yellow). You cannot enter Arena Zone." )
				return
			endif
			if $piao2 > 5
				BC( "dialogbox", "player", -1, "Fort Glacier Invitation (Yellow) has been used for 5 times and has expired." )
				return
			endif
			$Men1 = GetTeamMemberID( -1, 0 )
			$Men2 = GetTeamMemberID( -1, 1 )
			$Men3 = GetTeamMemberID( -1, 2 )
			$Men4 = GetTeamMemberID( -1, 3 )
			$Men5 = GetTeamMemberID( -1, 4 )
			$Men6 = GetTeamMemberID( -1, 5 )
			if $Men1 != -1
				$guildid0 = GetPlayerInfo ( $Men1 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men2 != -1
				$guildid0 = GetPlayerInfo ( $Men2 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men3 != -1
				$guildid0 = GetPlayerInfo ( $Men3 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men4 != -1
				$guildid0 = GetPlayerInfo ( $Men4 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men5 != -1
				$guildid0 = GetPlayerInfo ( $Men5 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men6 != -1
				$guildid0 = GetPlayerInfo ( $Men6 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif	
			$delete = SubPlayerInfo ( -1 , "item" , 63456 , 1 )
			if $delete != 0
				return
			endif
			SetServerVar ( 191 , $piao2 )
			if $Men1 != -1
				FlyToMap( $Men1 , 65 , 80 , 30 )
				
			endif
			if $Men2 != -1
				FlyToMap( $Men2 , 65 , 80 , 30 )
				
			endif
			if $Men3 != -1
				FlyToMap( $Men3 , 65 , 80 , 30 )
				
			endif
			if $Men4 != -1
				FlyToMap( $Men4 , 65 , 80 , 30 )
				
			endif
			if $Men5 != -1
				FlyToMap( $Men5 , 65 , 80 , 30 )
				
			endif
			if $Men6 != -1
				FlyToMap( $Men6 , 65 , 80 , 30 )
				
			endif
		endif
		if $qualification == 3
			$ticket = GetPlayerInfo ( -1 , "item" , 63457 )
			if $ticket < 1
				BC( "dialogbox", "player", -1, "You don't have Fort Glacier Invitation (Green). You cannot enter Arena Zone." )
				return
			endif
			if $piao3 > 5
				BC( "dialogbox", "player", -1, "Fort Glacier Invitation (Green) has been used for 5 times and has expired." )
				return
			endif
			$Men1 = GetTeamMemberID( -1, 0 )
			$Men2 = GetTeamMemberID( -1, 1 )
			$Men3 = GetTeamMemberID( -1, 2 )
			$Men4 = GetTeamMemberID( -1, 3 )
			$Men5 = GetTeamMemberID( -1, 4 )
			$Men6 = GetTeamMemberID( -1, 5 )
			if $Men1 != -1
				$guildid0 = GetPlayerInfo ( $Men1 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men2 != -1
				$guildid0 = GetPlayerInfo ( $Men2 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men3 != -1
				$guildid0 = GetPlayerInfo ( $Men3 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men4 != -1
				$guildid0 = GetPlayerInfo ( $Men4 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men5 != -1
				$guildid0 = GetPlayerInfo ( $Men5 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men6 != -1
				$guildid0 = GetPlayerInfo ( $Men6 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			$delete = SubPlayerInfo ( -1 , "item" , 63457 , 1 )
			if $delete != 0
				return
			endif	
			SetServerVar ( 192 , $piao3 )
			if $Men1 != -1
				FlyToMap( $Men1 , 65 , 91 , 91 )
				
			endif
			if $Men2 != -1
				FlyToMap( $Men2 , 65 , 91 , 91 )
				
			endif
			if $Men3 != -1
				FlyToMap( $Men3 , 65 , 91 , 91 )
				
			endif
			if $Men4 != -1
				FlyToMap( $Men4 , 65 , 91 , 91 )
				
			endif
			if $Men5 != -1
				FlyToMap( $Men5 , 65 , 91 , 91 )
				
			endif
			if $Men6 != -1
				FlyToMap( $Men6 , 65 , 91 , 91 )
				
			endif
		endif
		if $qualification == 4
			$ticket = GetPlayerInfo ( -1 , "item" , 63458 )
			if $ticket < 1
				BC( "dialogbox", "player", -1, "You don't have Fort Glacier Invitation (Blue). You cannot enter Arena Zone." )
				return
			endif
			if $piao4 > 5
				BC( "dialogbox", "player", -1, "Fort Glacier Invitation (Blue) has been used for 5 times and has expired." )
				return
			endif
			$Men1 = GetTeamMemberID( -1, 0 )
			$Men2 = GetTeamMemberID( -1, 1 )
			$Men3 = GetTeamMemberID( -1, 2 )
			$Men4 = GetTeamMemberID( -1, 3 )
			$Men5 = GetTeamMemberID( -1, 4 )
			$Men6 = GetTeamMemberID( -1, 5 )
			if $Men1 != -1
				$guildid0 = GetPlayerInfo ( $Men1 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men2 != -1
				$guildid0 = GetPlayerInfo ( $Men2 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men3 != -1
				$guildid0 = GetPlayerInfo ( $Men3 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men4 != -1
				$guildid0 = GetPlayerInfo ( $Men4 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men5 != -1
				$guildid0 = GetPlayerInfo ( $Men5 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men6 != -1
				$guildid0 = GetPlayerInfo ( $Men6 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			$delete = SubPlayerInfo ( -1 , "item" , 63458 , 1 )
			if $delete != 0
				return
			endif
			SetServerVar ( 193 , $piao4 )
			if $Men1 != -1
				FlyToMap( $Men1 , 65 , 43 , 96 )
				
			endif
			if $Men2 != -1
				FlyToMap( $Men2 , 65 , 43 , 96 )
				
			endif
			if $Men3 != -1
				FlyToMap( $Men3 , 65 , 43 , 96 )
				
			endif
			if $Men4 != -1
				FlyToMap( $Men4 , 65 , 43 , 96 )
				
			endif
			if $Men5 != -1
				FlyToMap( $Men5 , 65 , 43 , 96 )
				
			endif
			if $Men6 != -1
				FlyToMap( $Men6 , 65 , 43 , 96 )
				
			endif
		endif
		if $qualification == 5
			$ticket = GetPlayerInfo ( -1 , "item" , 63459 )
			if $ticket < 1
				BC( "dialogbox", "player", -1, "You don't have Fort Glacier Invitation (Purple). You cannot enter Arena Zone." )
				return
			endif
			if $piao5 > 5
				BC( "dialogbox", "player", -1, "Fort Glacier Invitation (Purple) has been used for 5 times and has expired." )
				return
			endif
			$Men1 = GetTeamMemberID( -1, 0 )
			$Men2 = GetTeamMemberID( -1, 1 )
			$Men3 = GetTeamMemberID( -1, 2 )
			$Men4 = GetTeamMemberID( -1, 3 )
			$Men5 = GetTeamMemberID( -1, 4 )
			$Men6 = GetTeamMemberID( -1, 5 )
			if $Men1 != -1
			$guildid0 = GetPlayerInfo ( $Men1 , "guildid" )
			if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men2 != -1
				$guildid0 = GetPlayerInfo ( $Men2 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men3 != -1
				$guildid0 = GetPlayerInfo ( $Men3 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men4 != -1
				$guildid0 = GetPlayerInfo ( $Men4 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men5 != -1
				$guildid0 = GetPlayerInfo ( $Men5 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men6 != -1
				$guildid0 = GetPlayerInfo ( $Men6 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			$delete = SubPlayerInfo ( -1 , "item" , 63459 , 1 )
			if $delete != 0
				return
			endif
			SetServerVar ( 194 , $piao5 )	
			if $Men1 != -1
				FlyToMap( $Men1 , 65 , 28 , 91 )
				
			endif
			if $Men2 != -1
				FlyToMap( $Men2 , 65 , 28 , 91 )
				
			endif
			if $Men3 != -1
				FlyToMap( $Men3 , 65 , 28 , 91 )
				
			endif
			if $Men4 != -1
				FlyToMap( $Men4 , 65 , 28 , 91 )
				
			endif
			if $Men5 != -1
				FlyToMap( $Men5 , 65 , 28 , 91 )
				
			endif
			if $Men6 != -1
				FlyToMap( $Men6 , 65 , 28 , 91 )
				
			endif
		endif
		if $qualification == 6
			$ticket = GetPlayerInfo ( -1 , "item" , 63460 )
			if $ticket < 1
				BC( "dialogbox", "player", -1, "You don't have Fort Glacier Invitation (Orange). You cannot enter Arena Zone." )
				return
			endif
			if $piao6 > 5
				BC( "dialogbox", "player", -1, "Fort Glacier Invitation (Orange) has been used for 5 times and has expired." )
				return
			endif
			$Men1 = GetTeamMemberID( -1, 0 )
			$Men2 = GetTeamMemberID( -1, 1 )
			$Men3 = GetTeamMemberID( -1, 2 )
			$Men4 = GetTeamMemberID( -1, 3 )
			$Men5 = GetTeamMemberID( -1, 4 )
			$Men6 = GetTeamMemberID( -1, 5 )
			if $Men1 != -1
				$guildid0 = GetPlayerInfo ( $Men1 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men2 != -1
				$guildid0 = GetPlayerInfo ( $Men2 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men3 != -1
				$guildid0 = GetPlayerInfo ( $Men3 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men4 != -1
				$guildid0 = GetPlayerInfo ( $Men4 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men5 != -1
				$guildid0 = GetPlayerInfo ( $Men5 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			if $Men6 != -1
				$guildid0 = GetPlayerInfo ( $Men6 , "guildid" )
				if $guildid0 != $guildid
					BC( "dialogbox", "player", -1, "Non-guild member spotted in your party!" )
					return
				endif
			endif
			$delete = SubPlayerInfo ( -1 , "item" , 63460 , 1 )
			if $delete != 0
				return
			endif
			SetServerVar ( 195 , $piao6 )
			if $Men1 != -1
				FlyToMap( $Men1 , 65 , 35 , 28 )
				
			endif
			if $Men2 != -1
				FlyToMap( $Men2 , 65 , 35 , 28 )
				
			endif
			if $Men3 != -1
				FlyToMap( $Men3 , 65 , 35 , 28 )
				
			endif
			if $Men4 != -1
				FlyToMap( $Men4 , 65 , 35 , 28 )
				
			endif
			if $Men5 != -1
				FlyToMap( $Men5 , 65 , 35 , 28 )
				
			endif
			if $Men6 != -1
				FlyToMap( $Men6 , 65 , 35 , 28 )
				
			endif
		endif
		
		//????-START
			$team_count = GetTeamMemberCount(-1)
			$TJ_join_number = GetGlobalVar(948)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(948 , $TJ_join_number)
		//????-END
		
	}
	
	function OnOption1(){
	
		$week = GetSystemTime( "week" )
		$hour = GetSystemTime( "hour" )
		$minute =  GetSystemTime( "minute")
		$line = GetServerLineID()
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		if $line != 4
			return
		endif
		if $week != 0
			return
		endif
		if $hour < 20
			return
		endif
		if $hour == 20
			if $minute < 2
				return
			endif
		endif	
		if $hour == 21
			return
		endif
		if $hour >= 22
			return
		endif
		$Start = IsFrozenFortStart()
		if $Start == -1
			return
		endif
		$qualification = GetFrozenFortWarPos( -1 )
		if $qualification == 0
			BC( "dialogbox", "player", -1, "Your guild is not qualified to enter Frozen Plain." )
			return
		endif
		$Lost = IsFrozenFortLost( $guildid )
		if $Lost == 0
			BC( "dialogbox", "player", -1, "Your guild fountain has been destroyed. You lost the chance to enter Frozen Plain." )
			return
		endif
		$succeed = FlyToEctype( -1 , 219 , 64 , 66 )
		if $succeed > 0
			BC( "screen" , "player" , -1 , "You have entered the Frozen Plain instance." )
		else
			BC( "dialogbox", "player", -1, "The instance Frozen Plain is full. Please switch to another Realm or try it later." )
			return
		endif
		//????-START
			$TJ_join_number = GetGlobalVar(949)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(949 , $TJ_join_number)
		//????-END
	}
	
	function OnOption2(){
	
		$line = GetServerLineID()
		if $line != 4
			BC( "dialogbox", "player", -1, "You can enter Glacier City only in Realm 4." )
			return
		endif
//		$week = GetSystemTime( "week" )
//		$hour = GetSystemTime( "hour" )
//		if $week == 0
//			if $hour >= 20
//				if $hour <= 21
//					BC( "dialogbox", "player", -1, "Fort Glacier war in progress. Unable to enter Glacier City now." )
//					return
//				endif
//			endif
//		endif
		$Start = IsFrozenFortStart()
		if $Start == 0
			BC( "dialogbox", "player", -1, "Fort Glacier war in progress. Unable to enter Glacier City now." )
			return
		endif
		
		$Fort = FrozenFortAccess ( -1 )
		if $Fort != 0
			BC( "dialogbox", "player", -1, "You are not qualified to enter Glacier City." )
			return
		endif
		FlyToMap( -1 , 218 , 59 , 63 )

	}