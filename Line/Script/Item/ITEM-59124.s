	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:ITEM-59124.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		
		
		//???????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif					
		
		//??????3?
		$Time = GetSystemTime( "yday" )
		$item_Time = GetPlayerVar( -1 , 3909 )
		
		if $Time == $item_Time
			$n = GetPlayerVar( -1 , 3250 )
			$n = $n + 1
			if $n <= 3
				$info = SubPlayerInfo( -1, "item", 59124 , 1  )
				if $info != 0
					return
				endif
				SetPlayerVar( -1 , 3250 , $n )
				//??????
				$random = RandomNumber(0 , 9999)
				$random2 = RandomNumber(0 , 9999)
				
				//30%???4?1
				if $random <= 3000
					if $random2 <= 2500
						AddPlayerInfo( -1, "item", 53846, 1 )
						
					endif

					if $random2 <= 5000
						if $random2 > 2500
							AddPlayerInfo( -1, "item", 53847, 1 )
							
						endif	
					endif					
					
					if $random2 <= 7500
						if $random2 > 5000
							AddPlayerInfo( -1, "item", 53849, 1 )
							
						endif	
					endif	
					
					if $random2 > 7500
						AddPlayerInfo( -1, "item", 53851, 1 )
						
		
					endif
					
				endif
				
				//70%???5?1
				if $random > 3000
					
					if $random2 <= 2000
						AddPlayerInfo( -1, "item", 53853, 1 )
						
					endif

					if $random2 <= 4000
						if $random2 > 2000
							AddPlayerInfo( -1, "item", 53854, 1 )
							
						endif	
					endif					
					
					if $random2 <= 6000
						if $random2 > 4000
							AddPlayerInfo( -1, "item", 53855, 1 )
							
						endif	
					endif	
					
					if $random2 <= 8000
						if $random2 > 6000
							AddPlayerInfo( -1, "item", 53856, 1 )
							
						endif	
					endif						
										
								
					if $random2 > 8000
						AddPlayerInfo( -1, "item", 53857, 1 )
						
		
					endif
					
				endif
							
			else
				BC( "screen" , "player" , -1 , "The Sealed Stardust Pack can only be used 3 times a day." )
				BC( "chat" , "player" , -1 , "The Sealed Stardust Pack can only be used 3 times a day." )
			endif
		else
		
				$info = SubPlayerInfo( -1, "item", 59124 , 1  )
				if $info != 0
					return
				endif
				SetPlayerVar( -1 , 3250 , 1 )
				SetPlayerVar( -1 , 3909 , $Time )
				
				//??????
				$random = RandomNumber(0 , 9999)
				$random2 = RandomNumber(0 , 9999)
				
				//30%???4?1
				if $random <= 3000
					if $random2 <= 2500
						AddPlayerInfo( -1, "item", 53846, 1 )
						
					endif

					if $random2 <= 5000
						if $random2 > 2500
							AddPlayerInfo( -1, "item", 53847, 1 )
							
						endif	
					endif					
					
					if $random2 <= 7500
						if $random2 > 5000
							AddPlayerInfo( -1, "item", 53849, 1 )
							
						endif	
					endif	
					
					if $random2 > 7500
						AddPlayerInfo( -1, "item", 53851, 1 )
						
		
					endif
					
				endif
				
				//70%???5?1
				if $random > 3000
					
					if $random2 <= 2000
						AddPlayerInfo( -1, "item", 53853, 1 )
						
					endif

					if $random2 <= 4000
						if $random2 > 2000
							AddPlayerInfo( -1, "item", 53854, 1 )
							
						endif	
					endif					
					
					if $random2 <= 6000
						if $random2 > 4000
							AddPlayerInfo( -1, "item", 53855, 1 )
							
						endif	
					endif	
					
					if $random2 <= 8000
						if $random2 > 6000
							AddPlayerInfo( -1, "item", 53856, 1 )
							
						endif	
					endif						
										
								
					if $random2 > 8000
						AddPlayerInfo( -1, "item", 53857, 1 )
						
		
					endif
					
				endif
		
		endif
		
		
							
	}