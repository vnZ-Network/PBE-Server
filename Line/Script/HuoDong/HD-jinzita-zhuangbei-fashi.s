	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/10
	//		Author:??
	//		TaskName:HD-jinzita-zhuangbei-fashi.s
	//		TaskID:????????
	//
	//****************************************
	function OnRequest(){
		
		$object = GetPlayerInfo( -1, "profession" )
		if $object != 4
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
			DisableNpcOption(8)
		endif
		
	}
	//???
	function OnOption0(){
	
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 4000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 4000 ." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$allhujiacount = $count + $countbang
		if $allhujiacount < 30
			BC( "dialogbox", "player", -1, "You do not have 30 Armorplate of the Fallen." )
			return
		endif
		
		//???????,??????
		if $countbang >= 30
			$result = SubPlayerInfo( -1, "item", 50026, 30 )
			if $result != 0
				return
			endif
			AddPlayerInfo( -1, "item", 38766, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		else
			//??????,???????,?????
			$countcha = 30 - $countbang
			if $countbang < 1
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result1 != 0
					return
				endif
			else
				$result = SubPlayerInfo( -1, "item", 50026, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
			endif
								
			AddPlayerInfo( -1, "item", 38766, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		endif
		

	}
	
	//???
	function OnOption1(){
			
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 4000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 4000 ." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$allhujiacount = $count + $countbang
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You do not have 50 Armorplate of the Fallen." )
			return
		endif
		
			//???????,??????
		if $countbang >= 50
			$result = SubPlayerInfo( -1, "item", 50026, 50 )
			if $result != 0
				return
			endif
			AddPlayerInfo( -1, "item", 38466, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
			
		else
			//??????,???????,?????
			$countcha = 50 - $countbang
			if $countbang < 1
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result1 != 0
					return
				endif
			else
				$result = SubPlayerInfo( -1, "item", 50026, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
			endif
			
			AddPlayerInfo( -1, "item", 38466, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
			
		endif
		//-------------------------------------------------------------------------

	}
	//-----------------------????
	
	//???
	function OnOption2(){	
			
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 10000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 10000 ." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63175 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$countbang1 = GetPlayerInfo( -1, "item", 50027 )
		
		//????
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You do not have 50 Armorplate of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You do not have a Queen's Emblem." )
				return
			endif
		endif
		
		//???????,??????
		if $countbang >= 50
			$result = SubPlayerInfo( -1, "item", 50026, 50 )
			if $result != 0
				return
			endif
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50027, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63175, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38266, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
			
		else
			//??????,???????,?????
			$countcha = 50 - $countbang
			if $countbang < 1
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result1 != 0
					return
				endif
			else
				$result = SubPlayerInfo( -1, "item", 50026, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
			endif
			
			//????
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50027, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63175, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38266, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		endif

	}
	
	//???
	function OnOption3(){		
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 10000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 10000 ." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63176 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$countbang1 = GetPlayerInfo( -1, "item", 50028 )
		
		//????
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You do not have 50 Armorplate of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You do not have a Scorpion Lord's Emblem." )
				return
			endif
		endif
		
		//???????,??????
		if $countbang >= 50
			$result = SubPlayerInfo( -1, "item", 50026, 50 )
			if $result != 0
				return
			endif
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50028, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63176, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38666, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
			
		else
			//??????,???????,?????
			$countcha = 50 - $countbang
			if $countbang < 1
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result1 != 0
					return
				endif
			else
				$result = SubPlayerInfo( -1, "item", 50026, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
			endif
			
			//????
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50028, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63176, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38666, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		endif
	
	}
	
	//???
	function OnOption4(){
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 10000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 10000 ." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63177 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$countbang1 = GetPlayerInfo( -1, "item", 50029 )
		
		//????
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You do not have 50 Armorplate of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You do not have a Princess Emblem." )
				return
			endif
		endif
		
		//???????,??????
		if $countbang >= 50
			$result = SubPlayerInfo( -1, "item", 50026, 50 )
			if $result != 0
				return
			endif
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50029, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63177, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38566, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
			
		else
			//??????,???????,?????
			$countcha = 50 - $countbang
			if $countbang < 1
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result1 != 0
					return
				endif
			else
				$result = SubPlayerInfo( -1, "item", 50026, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
			endif
			
			//????
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50029, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63177, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38566, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		endif
		
	}
	
	//???
	function OnOption5(){
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 10000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 10000 ." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63178 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$countbang1 = GetPlayerInfo( -1, "item", 50030 )
		
		//????
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You do not have 50 Armorplate of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You do not have a Arch Priest Emblem." )
				return
			endif
		endif
		
		//???????,??????
		if $countbang >= 50
			$result = SubPlayerInfo( -1, "item", 50026, 50 )
			if $result != 0
				return
			endif
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50030, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63178, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38166, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
			
		else
			//??????,???????,?????
			$countcha = 50 - $countbang
			if $countbang < 1
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result1 != 0
					return
				endif
			else
				$result = SubPlayerInfo( -1, "item", 50026, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
			endif
			
			//????
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50030, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63178, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38166, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		endif

	}
	
	//?????
	
	function OnOption6(){
			
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 18000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 18000 ." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63179 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$countbang1 = GetPlayerInfo( -1, "item", 50031 )
		
		//????
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 60
			BC( "dialogbox", "player", -1, "You do not have 60 Armorplate of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You do not have a Confessing Soul." )
				return
			endif
		endif
		
		//???????,??????
		if $countbang >= 60
			$result = SubPlayerInfo( -1, "item", 50026, 60 )
			if $result != 0
				return
			endif
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50031, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63179, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38366, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
			
		else
			//??????,???????,?????
			$countcha = 60 - $countbang
			if $countbang < 1
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result1 != 0
					return
				endif
			else
				$result = SubPlayerInfo( -1, "item", 50026, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
			endif
			
			//????
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50031, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63179, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 38366, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		endif

	}
	
	//?????
	
	function OnOption7(){
			
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 18000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 18000 ." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63179 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$countbang1 = GetPlayerInfo( -1, "item", 50031 )
		
		//????
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 70
			BC( "dialogbox", "player", -1, "You do not have 70 Armorplate of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You do not have a Confessing Soul." )
				return
			endif
		endif
		
		//???????,??????
		if $countbang >= 70
			$result = SubPlayerInfo( -1, "item", 50026, 70 )
			if $result != 0
				return
			endif
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50031, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63179, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 19866, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
			
		else
			//??????,???????,?????
			$countcha = 70 - $countbang
			if $countbang < 1
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result1 != 0
					return
				endif
			else
				$result = SubPlayerInfo( -1, "item", 50026, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63174, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
			endif
			
			//????
			if $countbang1 > 0
				$result = SubPlayerInfo( -1, "item", 50031, 1 )
			else
				$result = SubPlayerInfo( -1, "item", 63179, 1 )
			endif
			if $result != 0
				return
			endif
			
			AddPlayerInfo( -1, "item", 19866, 1 )
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		endif

	}
	
	
	//????
	
	function OnOption8(){
			
		$prestige = GetPlayerInfo(-1, "prestige" , 15)
		if $prestige < 30000
			BC( "dialogbox", "player", -1, "Your Valhalla Avenger must reach 30000 ." )
			return
		endif
		//????
		$result = AddTrump( -1, 11002, 1 )
		if $result == 0
			BC( "dialogbox", "player", -1, "Exchange successfully." )
		else
			BC( "dialogbox", "player", -1, "You have Fallen Angel Feather,please check it in Relic window." )
		endif
			

	}