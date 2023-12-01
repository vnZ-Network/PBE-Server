	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/25
	//		Author:???
	//		TaskName:Item-63763.s
	//		TaskID:???
	//
	//****************************************
	
	function OnUseItem(){
		
		$result = SubPlayerInfo( -1, "item", 63763, 1 )
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63764, 1 )
		
		$Rad1 = RandomNumber( 1, 10000 )
		if $Rad1 <= 15
			AddPlayerInfo( -1, "item", 64508, 1 )
			#name = GetPlayerInfo( -1, "name" )
			BC( "screen", "servergroup", -1, "The hero ",#name,"You opened a Heavenly Jewelry Box and found a LV4 Gem Chest!" )
		endif
		if $Rad1 > 15
			if $Rad1 <= 16
				$temp = GetGlobalVar(6)
				if $temp == 0
					AddPlayerInfo( -1, "item", 64248, 1 )
					#name = GetPlayerInfo( -1, "name" )
					BC( "screen", "servergroup", -1, "The hero ",#name,"You opened a Heavenly Jewelry Box and found a LV5 Gem Chest!" )
					SetGlobalVar( 6, 1 )
				endif
			endif
		endif
		if $Rad1 > 16
			if $Rad1 <= 36
				$temp1 = GetGlobalVar(7)
				if $temp1 < 10
					AddPlayerInfo( -1, "item", 63768, 1 )
					#name = GetPlayerInfo( -1, "name" )
					BC( "screen", "servergroup", -1, "The hero ",#name,"You opened a Heavenly Jewelry Box and found a Platinum Noble Card!" )
					$temp1 = GetGlobalVar(7)
					$temp1 = $temp1 + 1
					SetGlobalVar( 7, $temp1 )
				endif
			endif
		endif
		
	}