	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/05
	//		Author:???
	//		TaskName:SY-Item-63392.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 63392 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You need at least 2 empty slots in your bag." )
			return
		endif
		
		$value = GetPlayerVar( -1, 3680 )
		if $value == 0
			BC( "screen", "player", -1, "The probe is running out of power." )
			return
		endif
		
		$map = GetPlayerInfo( -1, "mapid" )
		if $map != $value
			//if $value == 129
			//	BC( "screen", "player", -1, "GUID:07354000002" )
			//	return
			//endif
			if $value == 3
				BC( "screen", "player", -1, "The probe shows that the treasure is around Aegean North." )
				return
			endif
			if $value == 87
				BC( "screen", "player", -1, "The probe shows that the treasure is around Great Abyss." )
				return
			endif
			if $value == 86
				BC( "screen", "player", -1, "The probe shows that the treasure is around Sea of Atlantis." )
				return
			endif
			if $value == 119
				BC( "screen", "player", -1, "The probe shows that the treasure is around Dragon Emperor's Catacomb." )
				return
			endif
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63392, 1 )
		if $SubItem != 0
			return
		endif
		
		//??
		$Now_Mday = GetSystemTime( "mday" )
		//??
		$Now_Month = GetSystemTime( "month" )
		
		SetPlayerVar( -1, 3680, 0 )
		AddPlayerInfo( -1, "item", 63419, 1 )
		$level = GetPlayerInfo( -1, "level" )
		if $level >= 60
			$ServerVar = GetServerVar( 97 )
			if $ServerVar < 1
				$Random = RandomNumber( 1, 500 )
				if $Random == 1
					//??
					if $Now_Month == 1
						if $Now_Mday >= 20
							DropMonsterItems( -1, 90122 )
						endif
					else
						if $Now_Month == 2
							if $Now_Mday <= 18
								DropMonsterItems( -1, 90122 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 2
						if $Now_Mday >= 19
							DropMonsterItems( -1, 90123 )
						endif
					else
						if $Now_Month == 3
							if $Now_Mday <= 20
								DropMonsterItems( -1, 90123 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 3
						if $Now_Mday >= 21
							DropMonsterItems( -1, 90124 )
						endif
					else
						if $Now_Month == 4
							if $Now_Mday <= 20
								DropMonsterItems( -1, 90124 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 4
						if $Now_Mday >= 21
							DropMonsterItems( -1, 90113 )
						endif
					else
						if $Now_Month == 5
							if $Now_Mday <= 20
								DropMonsterItems( -1, 90113 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 5
						if $Now_Mday >= 21
							DropMonsterItems( -1, 90114 )
						endif
					else
						if $Now_Month == 6
							if $Now_Mday <= 21
								DropMonsterItems( -1, 90114 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 6
						if $Now_Mday >= 22
							DropMonsterItems( -1, 90115 )
						endif
					else
						if $Now_Month == 7
							if $Now_Mday <= 22
								DropMonsterItems( -1, 90115 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 7
						if $Now_Mday >= 23
							DropMonsterItems( -1, 90116 )
						endif
					else
						if $Now_Month == 8
							if $Now_Mday <= 22
								DropMonsterItems( -1, 90116 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 8
						if $Now_Mday >= 23
							DropMonsterItems( -1, 90117 )
						endif
					else
						if $Now_Month == 9
							if $Now_Mday <= 22
								DropMonsterItems( -1, 90117 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 9
						if $Now_Mday >= 23
							DropMonsterItems( -1, 90118 )
						endif
					else
						if $Now_Month == 10
							if $Now_Mday <= 22
								DropMonsterItems( -1, 90118 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 10
						if $Now_Mday >= 23
							DropMonsterItems( -1, 90119 )
						endif
					else
						if $Now_Month == 11
							if $Now_Mday <= 21
								DropMonsterItems( -1, 90119 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 11
						if $Now_Mday >= 22
							DropMonsterItems( -1, 90120 )
						endif
					else
						if $Now_Month == 12
							if $Now_Mday <= 21
								DropMonsterItems( -1, 90120 )
							endif
						endif	
					endif
					//??
					if $Now_Month == 12
						if $Now_Mday >= 22
							DropMonsterItems( -1, 90121 )
						endif
					else
						if $Now_Month == 1
							if $Now_Mday <= 19
								DropMonsterItems( -1, 90121 )
							endif
						endif	
					endif
					
					$ServerVar1 = GetServerVar( 97 )
					$ServerVar1 = $ServerVar1 + 1
					SetServerVar( 97, $ServerVar1 )
					return
				endif
				
				if $Random >= 2
					if $Random <= 149
						DropMonsterItems( -1, 90125 )
						return
					endif	
				endif
				
				if $Random >= 150
					if $Random <= 500
						$level = GetPlayerInfo( -1, "level" )
						$Random1 = RandomNumber( 1, 3 )
						if $Random1 == 1
							$exp = $level * $level
							$exp = $exp * $level
							$exp = $exp + 1000
							AddPlayerInfo( -1, "exp", $exp )
							return
						endif
						if $Random1 == 2
							$Radone = RandomNumber( 4, 6 )
							$Radtwo = RandomNumber( 0, 9 )
							$point1 = $Radone * 100
							$point2 = $Radtwo * 10
							$point3 = $point1 + $point2
							$point = $point3 + $Radtwo
							$point = $level * $point
							$point = $point / 100
							AddPlayerInfo( -1, "givepoint", $point )
							BC( "screen", "player", -1, "Congrats! You have acquired ",$point,"Salary." )
							return
						endif
						if $Random1 == 3
							AddPlayerInfo( -1, "item", 64402, 1 )
							return
						endif
					endif
				endif			
			else
				$Random = RandomNumber( 1, 100 )
				if $Random >= 1
					if $Random <= 30
						DropMonsterItems( -1, 90125 )
						return
					endif
				endif
				if $Random >= 31
					if $Random <= 100
						$level = GetPlayerInfo( -1, "level" )
						$Random1 = RandomNumber( 1, 3 )
						if $Random1 == 1
							$exp = $level * $level
							$exp = $exp * $level
							$exp = $exp + 1000
							AddPlayerInfo( -1, "exp", $exp )
							return
						endif
						if $Random1 == 2
							$Radone = RandomNumber( 4, 6 )
							$Radtwo = RandomNumber( 0, 9 )
							$point1 = $Radone * 100
							$point2 = $Radtwo * 10
							$point3 = $point1 + $point2
							$point = $point3 + $Radtwo
							$point = $level * $point
							$point = $point / 100
							AddPlayerInfo( -1, "givepoint", $point )
							BC( "screen", "player", -1, "Congrats! You have acquired ",$point,"Salary." )
							return
						endif
						if $Random1 == 3
							AddPlayerInfo( -1, "item", 64402, 1 )
							return
						endif
					endif
				endif
			endif
		endif
		
		if $level >= 20
			if $level < 60
				$Random = RandomNumber( 1, 100 )
				if $Random >= 1
					if $Random <= 30
						DropMonsterItems( -1, 90125 )
						return
					endif
				endif
				if $Random >= 31
					if $Random <= 100
						$level = GetPlayerInfo( -1, "level" )
						$Random1 = RandomNumber( 1, 3 )
						if $Random1 == 1
							$exp = $level * $level
							$exp = $exp * $level
							$exp = $exp + 1000
							AddPlayerInfo( -1, "exp", $exp )
							return
						endif
						if $Random1 == 2
							$Radone = RandomNumber( 4, 6 )
							$Radtwo = RandomNumber( 0, 9 )
							$point1 = $Radone * 100
							$point2 = $Radtwo * 10
							$point3 = $point1 + $point2
							$point = $point3 + $Radtwo
							$point = $level * $point
							$point = $point / 100
							AddPlayerInfo( -1, "givepoint", $point )
							BC( "screen", "player", -1, "Congrats! You have acquired ",$point,"Salary." )
							return
						endif
						if $Random1 == 3
							AddPlayerInfo( -1, "item", 64402, 1 )
							return
						endif
					endif
				endif
			endif
		endif
		
		if $level < 20
			$Random = RandomNumber( 1, 100 )
			if $Random >= 1
				if $Random <= 5
					DropMonsterItems( -1, 90125 )
					return
				endif
			endif
			if $Random >= 6
				if $Random <= 100
					$level = GetPlayerInfo( -1, "level" )
					$Random1 = RandomNumber( 1, 3 )
					if $Random1 == 1
						$exp = $level * $level
						$exp = $exp * $level
						$exp = $exp + 1000
						AddPlayerInfo( -1, "exp", $exp )
						return
					endif
					if $Random1 == 2
						$Radone = RandomNumber( 4, 6 )
						$Radtwo = RandomNumber( 0, 9 )
						$point1 = $Radone * 100
						$point2 = $Radtwo * 10
						$point3 = $point1 + $point2
						$point = $point3 + $Radtwo
						$point = $level * $point
						$point = $point / 100
						AddPlayerInfo( -1, "givepoint", $point )
						BC( "screen", "player", -1, "Congrats! You have acquired ",$point,"Salary." )
						return
					endif
					if $Random1 == 3
						AddPlayerInfo( -1, "item", 64402, 1 )
						return
					endif
				endif
			endif
		endif
			
	}