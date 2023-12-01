	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/05
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51634.s
	//		TaskID:?????
	//
	//****************************************
	


function OnDead(){
	
		$ectype_id = GetEctypeID( -1 , 258 )
		
		//???????,0????  1 ??
		$mode = GetEctypeVar( $ectype_id , 111 )
		
	
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
		
		//?????????
		OpenMask( 9 , $ectype_id )
		
		
	
		
		//??????????????
		if $Men1 != -1
			$lv1 = GetPlayerInfo ( $Men1 , "level" )
			$mapid1 = GetPlayerInfo( $Men1 , "mapid" )
			$n = RandomNumber ( 0 , 9999 )
			$count = GetServerVar( 147 )
			$count = $count + 1
			//??????10?
			if $mapid1 == $ectype_id
				if $mode == 1
					if $count <= 10
						if $lv1 >= 90
							if $n < 100
								#name1 = GetPlayerInfo( $Men1 , "name" )
								DropMonsterItems( $Men1 , 90093 )
								BC("screen", "servergroup", -1, "The hero ",#name1, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								BC("chat", "servergroup", -1, "The hero ",#name1, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								AddPlayerInfo( $Men1 , "prestige" , 9 , 100 )
								SetServerVar( 147 , $count )
							else
								DropMonsterItems( $Men1 , 90105 )
							endif
						else
							DropMonsterItems( $Men1 , 90105 )
						endif
					else
						DropMonsterItems( $Men1 , 90105 )
					endif
				else
					DropMonsterItems( $Men1 , 90105 )
				endif
			endif
		endif
		
		
		if $Men2 != -1
			$lv2 = GetPlayerInfo ( $Men2 , "level" )
			$mapid2 = GetPlayerInfo( $Men2 , "mapid" )
			$n = RandomNumber ( 0 , 9999 )
			$count = GetServerVar( 147 )
			$count = $count + 1
			//??????10?
			if $mapid2 == $ectype_id
				if $mode == 1
					if $count <= 10
						if $lv2 >= 90
							if $n < 100
								#name2 = GetPlayerInfo( $Men2 , "name" )
								DropMonsterItems( $Men2 , 90093 )
								BC("screen", "servergroup", -1, "The hero ",#name2, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								BC("chat", "servergroup", -1, "The hero ",#name2, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								AddPlayerInfo( $Men2 , "prestige" , 9 , 100 )
								SetServerVar( 147 , $count )
							else
								DropMonsterItems( $Men2 , 90105 )
							endif
						else
							DropMonsterItems( $Men2 , 90105 )
						endif
					else
						DropMonsterItems( $Men2 , 90105 )
					endif
				else
					DropMonsterItems( $Men2 , 90105 )
				endif
			endif
		endif
		
		if $Men3 != -1
			$lv3 = GetPlayerInfo ( $Men3 , "level" )
			$mapid3 = GetPlayerInfo( $Men3 , "mapid" )
			$n = RandomNumber ( 0 , 9999 )
			$count = GetServerVar( 147 )
			$count = $count + 1
			//??????10?
			if $mapid3 == $ectype_id
				if $mode == 1
					if $count <= 10
						if $lv3 >= 90
							if $n < 100
								#name3 = GetPlayerInfo( $Men3 , "name" )
								DropMonsterItems( $Men3 , 90093 )
								BC("screen", "servergroup", -1, "The hero ",#name3, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								BC("chat", "servergroup", -1, "The hero ",#name3, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								AddPlayerInfo( $Men3 , "prestige" , 9 , 100 )
								SetServerVar( 147 , $count )
							else
								DropMonsterItems( $Men3 , 90105 )
							endif
						else
							DropMonsterItems( $Men3 , 90105 )
						endif
					else
						DropMonsterItems( $Men3 , 90105 )
					endif
				else
					DropMonsterItems( $Men3 , 90105 )
				endif
			endif
		endif
		
		if $Men4 != -1
			$lv4 = GetPlayerInfo ( $Men4 , "level" )
			$mapid4 = GetPlayerInfo( $Men4 , "mapid" )
			$n = RandomNumber ( 0 , 9999 )
			$count = GetServerVar( 147 )
			$count = $count + 1
			//??????10?
			if $mapid4 == $ectype_id
				if $mode == 1
					if $count <= 10
						if $lv4 >= 90
							if $n < 100
								#name4 = GetPlayerInfo( $Men4 , "name" )
								DropMonsterItems( $Men4 , 90093 )
								BC("screen", "servergroup", -1, "The hero ",#name4, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								BC("chat", "servergroup", -1, "The hero ",#name4, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								AddPlayerInfo( $Men4 , "prestige" , 9 , 100 )
								SetServerVar( 147 , $count )
							else
								DropMonsterItems( $Men4 , 90105 )
							endif
						else
							DropMonsterItems( $Men4 , 90105 )
						endif
					else
						DropMonsterItems( $Men4 , 90105 )
					endif
				else
					DropMonsterItems( $Men4 , 90105 )
				endif
			endif
		endif
		
		if $Men5 != -1
			$lv5 = GetPlayerInfo ( $Men5 , "level" )
			$mapid5 = GetPlayerInfo( $Men5 , "mapid" )
			$n = RandomNumber ( 0 , 9999 )
			$count = GetServerVar( 147 )
			$count = $count + 1
			//??????10?
			if $mapid5 == $ectype_id
				if $mode == 1
					if $count <= 10
						if $lv5 >= 90
							if $n < 100
								#name5 = GetPlayerInfo( $Men5 , "name" )
								DropMonsterItems( $Men5 , 90093 )
								BC("screen", "servergroup", -1, "The hero ",#name5, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								BC("chat", "servergroup", -1, "The hero ",#name5, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								AddPlayerInfo( $Men5 , "prestige" , 9 , 100 )
								SetServerVar( 147 , $count )
							else
								DropMonsterItems( $Men5 , 90105 )
							endif
						else
							DropMonsterItems( $Men5 , 90105 )
						endif
					else
						DropMonsterItems( $Men5 , 90105 )
					endif
				else
					DropMonsterItems( $Men5 , 90105 )
				endif
			endif
		endif
		
		if $Men6 != -1
			$lv6 = GetPlayerInfo ( $Men6 , "level" )
			$mapid6 = GetPlayerInfo( $Men6 , "mapid" )
			$n = RandomNumber ( 0 , 9999 )
			$count = GetServerVar( 147 )
			$count = $count + 1
			//??????10?
			if $mapid6 == $ectype_id
				if $mode == 1
					if $count <= 10
						if $lv6 >= 90
							if $n < 100
								#name6 = GetPlayerInfo( $Men6 , "name" )
								DropMonsterItems( $Men6 , 90093 )
								BC("screen", "servergroup", -1, "The hero ",#name6, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								BC("chat", "servergroup", -1, "The hero ",#name6, " killed Okula in Shadow Manor and obtained materials for upgrading Oracle items (Shadow Keystone)." )
								AddPlayerInfo( $Men6 , "prestige" , 9 , 100 )
								SetServerVar( 147 , $count )
							else
								DropMonsterItems( $Men6 , 90105 )
							endif
						else
							DropMonsterItems( $Men6 , 90105 )
						endif
					else
						DropMonsterItems( $Men6 , 90105 )
					endif
				else
					DropMonsterItems( $Men6 , 90105 )
				endif
			endif
		endif
		
		
	}