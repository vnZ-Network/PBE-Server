	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/15
	//		Author:???
	//		TaskName:NPC-constellation-1891.s
	//		TaskID:?? ????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		
		$a = GetServerVar( 133 )
		if $a == 0
			BC( "dialogbox", "player", -1, "Today's winning zodiacal sign has not yet been determined.\n\nThe first temple to have 60 Constellation Wish Charms used within its confines will be declared the day's winner. Speak with Arnyth to go to your temple." )
			return
		endif
		if $a == 1
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Aries!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 2
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Taurus!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 3
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Gemini!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 4
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Cancer!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 5
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Leo!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 6
			$info = GetPlayerInfo( -1 , "nullitem" , 0 )
			if $info < 2
				BC( "dialogbox", "player", -1, "\nYou need 2 empty bag slots." )
				return
			endif
			
			$lasttime = GetPlayerVar( -1 , 3685 )
			$time = GetSystemTime( "yday" )
			if $lasttime == $time
				BC( "dialogbox", "player", -1, "\nYou have already acquired the reward of today.\nThis reward is available once a day." )
				return
			endif
			
			$Status = IsExistStatus( -1 , 10688 )
			if $Status != 0
				BC( "dialogbox", "player", -1, "\nYou don't have the Virgo protection. You cannot acquire Virgo reward." )
				return
			endif
		
			//AddPlayerInfo ( -1 , "item" , 63442 , 1 )
			AddPlayerInfo ( -1 , "item" , 12623 , 1 )
			SetPlayerVar( -1 , 3685 , $time )
			BC( "dialogbox", "player", -1, "\nYou have acquired the lucky constellation reward of today.\n\nUse [Shiny Wish Charm] to acquire the EXP reward from the pet in the constellation temple.")
			return
			
		endif
		if $a == 7
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Libra!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 8
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Scorpio!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 9
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Sagittarius!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 10
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Capricorn!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 11
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Aquarius!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
		if $a == 12
			BC( "dialogbox", "player", -1, "\nToday's lucky constellation is Pisces!\n\nYou cannot acquire the lucky constellation reward. Use Constellation Faith Stamp to change your constellation protection to acquire the reward.")
			return
		endif
	
	}	
	
	function OnOption1(){
	
		$Status1 = IsExistStatus( -1 , 10683 )
		$Status2 = IsExistStatus( -1 , 10684 )
		$Status3 = IsExistStatus( -1 , 10685 )
		$Status4 = IsExistStatus( -1 , 10686 )
		$Status5 = IsExistStatus( -1 , 10687 )
		$Status6 = IsExistStatus( -1 , 10688 )
		$Status7 = IsExistStatus( -1 , 10689 )
		$Status8 = IsExistStatus( -1 , 10690 )
		$Status9 = IsExistStatus( -1 , 10691 )
		$Status10 = IsExistStatus( -1 , 10692 )
		$Status11 = IsExistStatus( -1 , 10693 )
		$Status12 = IsExistStatus( -1 , 10694 )
		
		$a = GetPlayerInfo( -1 , "item", 63446 )
		$b = GetPlayerInfo( -1 , "item", 63841 )
		if $a < 1
			if $b < 1
				BC( "dialogbox", "player", -1, "You don't have the Constellation Faith Stamp. The stamp can alter your constellation protection for 2 hours." )
				return
			endif
		endif
		if $Status6 == 0
			BC( "dialogbox", "player", -1, "You already have the Virgo protection. Do you want even more rewards?" )
			return
		endif
		if $Status2 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status3 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status4 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status5 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status1 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status7 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status8 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status9 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status10 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status11 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		if $Status12 == 0
			$a = GetPlayerInfo( -1 , "item", 63446 )
			if $a > 0
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63446 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			else
				$Subinfo2 = SubPlayerInfo( -1 , "item", 63841 , 1 )
				if $Subinfo2 != 0
					return
				endif
				AddStatus( -1 , 10688 , 1 )
				return
			endif
		endif
		BC( "dialogbox", "player", -1, "You don't have a constellation protection. Unable to change." )
	}	