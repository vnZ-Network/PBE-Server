//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/23
	//		Author:???
	//		TaskName:NPC-1898.s
	//		TaskID:????
	//
	//****************************************
	
	function OnOption0(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63175 )
		$countbang1 = GetPlayerInfo( -1, "item", 50027 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Queen's Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50028, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50028, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption1(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63175 )
		$countbang1 = GetPlayerInfo( -1, "item", 50027 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Queen's Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50029, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50029, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption2(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63175 )
		$countbang1 = GetPlayerInfo( -1, "item", 50027 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Queen's Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50030, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50030, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption3(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63176 )
		$countbang1 = GetPlayerInfo( -1, "item", 50028 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Scopion King's Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50027, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50027, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption4(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63176 )
		$countbang1 = GetPlayerInfo( -1, "item", 50028 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Scopion King's Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50029, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50029, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption5(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63176 )
		$countbang1 = GetPlayerInfo( -1, "item", 50028 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Scopion King's Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50030, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50030, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption6(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63177 )
		$countbang1 = GetPlayerInfo( -1, "item", 50029 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Princess Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50027, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50027, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption7(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63177 )
		$countbang1 = GetPlayerInfo( -1, "item", 50029 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Princess Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50028, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50028, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption8(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63177 )
		$countbang1 = GetPlayerInfo( -1, "item", 50029 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Princess Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50030, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50030, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption9(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63178 )
		$countbang1 = GetPlayerInfo( -1, "item", 50030 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Arch Priest Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50027, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50027, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption10(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63178 )
		$countbang1 = GetPlayerInfo( -1, "item", 50030 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Arch Priest Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50028, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50028, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption11(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//???
		$count = GetPlayerInfo( -1, "item", 63174 )
		$countbang = GetPlayerInfo( -1, "item", 50026 )
		//??
		$count1 = GetPlayerInfo( -1, "item", 63178 )
		$countbang1 = GetPlayerInfo( -1, "item", 50030 )
		
		//????
		$allhujiacount = $count + $countbang
		
		if $allhujiacount < 50
			BC( "dialogbox", "player", -1, "You need 50 Armorplates of the Fallen." )
			return
		endif
		
		if $count1 < 1
			if $countbang1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Arch Priest Emblem." )
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
			
			AddPlayerInfo( -1, "item", 50029, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )	
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
			
			AddPlayerInfo( -1, "item", 50029, 1 )
			BC( "dialogbox", "player", -1, "Exchange completed." )
		endif

	}
	
	function OnOption12(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//??
		$count1 = GetPlayerInfo( -1, "item", 50027 )
		$count2 = GetPlayerInfo( -1, "item", 50028 )
		$count3 = GetPlayerInfo( -1, "item", 50029 )
		$count4 = GetPlayerInfo( -1, "item", 50030 )
		$item1 = GetPlayerInfo( -1, "item", 63175 )
		$item2 = GetPlayerInfo( -1, "item", 63176 )
		$item3 = GetPlayerInfo( -1, "item", 63177 )
		$item4 = GetPlayerInfo( -1, "item", 63178 )
		//????
		
		
		if $count1 < 1
			if $item1 < 1
				BC( "dialogbox", "player", -1, "You need 1 Queen's Emblem." )
				return
			endif	
		endif
		
		if $count2 < 1
			if $item2 < 1
				BC( "dialogbox", "player", -1, "You need 1 Scopion King's Emblem." )
				return
			endif	
		endif
		
		if $count3 < 1
			if $item3 < 1
				BC( "dialogbox", "player", -1, "You need 1 Princess Emblem." )
				return
			endif
		endif
		
		if $count4 < 1
			if $item4 < 1
				BC( "dialogbox", "player", -1, "You need 1 Arch Priest Emblem." )
				return
			endif	
		endif
		
		//???????,??????
		if $count1 > 0
				$result1 = SubPlayerInfo( -1, "item", 50027, 1 )
		else
				$result1 = SubPlayerInfo( -1, "item", 63175, 1 )
		endif
		if $result1 != 0
			return
		endif
		
		if $count2 > 0
				$result2 = SubPlayerInfo( -1, "item", 50028, 1 )
		else
				$result2 = SubPlayerInfo( -1, "item", 63176, 1 )
		endif
		if $result2 != 0
			return
		endif
		
		if $count3 > 0
				$result3 = SubPlayerInfo( -1, "item", 50029, 1 )
		else
				$result3 = SubPlayerInfo( -1, "item", 63177, 1 )
		endif
		if $result3 != 0
			return
		endif
		
		if $count4 > 0
				$result4 = SubPlayerInfo( -1, "item", 50030, 1 )
		else
				$result4 = SubPlayerInfo( -1, "item", 63178, 1 )
		endif
		if $result4 != 0
			return
		endif
			
		AddPlayerInfo( -1, "item", 50031, 1 )
		BC( "dialogbox", "player", -1, "Exchange completed." )
		
	}
	
	function OnOption13(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//????
		$count1 = GetPlayerInfo( -1, "item", 50031 )
		$count2 = GetPlayerInfo( -1, "item", 63179 )
		//????
		
		
		if $count1 < 1
			if $count2 < 1
				BC( "dialogbox", "player", -1, "You need 1 Confessing Soul." )
				return
			endif	
		endif
		
		//???????,??????
		if $count1 > 0
				$result1 = SubPlayerInfo( -1, "item", 50031, 1 )
		else
				$result1 = SubPlayerInfo( -1, "item", 63179, 1 )
		endif
		if $result1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 50027, 1 )
		BC( "dialogbox", "player", -1, "Exchange completed." )
		
	}
	
	function OnOption14(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//????
		$count1 = GetPlayerInfo( -1, "item", 50031 )
		$count2 = GetPlayerInfo( -1, "item", 63179 )
		//????
		
		
		if $count1 < 1
			if $count2 < 1
				BC( "dialogbox", "player", -1, "You need 1 Confessing Soul." )
				return
			endif	
		endif
		
		//???????,??????
		if $count1 > 0
				$result1 = SubPlayerInfo( -1, "item", 50031, 1 )
		else
				$result1 = SubPlayerInfo( -1, "item", 63179, 1 )
		endif
		if $result1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 50028, 1 )
		BC( "dialogbox", "player", -1, "Exchange completed." )
		
	}
	
	function OnOption15(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//????
		$count1 = GetPlayerInfo( -1, "item", 50031 )
		$count2 = GetPlayerInfo( -1, "item", 63179 )
		//????
		
		
		if $count1 < 1
			if $count2 < 1
				BC( "dialogbox", "player", -1, "You need 1 Confessing Soul." )
				return
			endif	
		endif
		
		//???????,??????
		if $count1 > 0
				$result1 = SubPlayerInfo( -1, "item", 50031, 1 )
		else
				$result1 = SubPlayerInfo( -1, "item", 63179, 1 )
		endif
		if $result1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 50029, 1 )
		BC( "dialogbox", "player", -1, "Exchange completed." )
		
	}
	
	function OnOption16(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//????
		//????
		$count1 = GetPlayerInfo( -1, "item", 50031 )
		$count2 = GetPlayerInfo( -1, "item", 63179 )
		//????
		
		
		if $count1 < 1
			if $count2 < 1
				BC( "dialogbox", "player", -1, "You need 1 Confessing Soul." )
				return
			endif	
		endif
		
		//???????,??????
		if $count1 > 0
				$result1 = SubPlayerInfo( -1, "item", 50031, 1 )
		else
				$result1 = SubPlayerInfo( -1, "item", 63179, 1 )
		endif
		if $result1 != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 50030, 1 )
		BC( "dialogbox", "player", -1, "Exchange completed." )
		
	}