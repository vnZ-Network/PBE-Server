	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12/01
	//		Author:???
	//		TaskName:NPC-1533.s
	//		TaskID:????
	//
	//****************************************
	
	//NpcOption(0):??®????¯
	//NpcOption(1):??100?????
	//NpcOption(2):??115?????
	//NpcOption(3):??®????¯
	
	function OnRequest(){
		
		//??:????,?????????
		$Task0 = IsTaskDone( -1, 243 )
		$profession = GetPlayerInfo( -1, "profession" )
		
		if $Task0 != 0
			DisableNpcOption(0)
		endif
		
		//??:??
		if $profession == 1		
		
			//??:?????,??????????100?????
			$Task11 = IsTaskDone( -1, 1482 )		
			if $Task11 != 0
				DisableNpcOption(1)
			endif
				
			//??:?????,??????????115?????
			$Task21 = IsTaskDone( -1, 1761 )
			if $Task21 != 0
				DisableNpcOption(2)
			endif
			
		endif
		
		//??:??
		if $profession == 2		
			
			//??:?????,??????????100?????
			$Task12 = IsTaskDone( -1, 1483 )		
			if $Task12 != 0
				DisableNpcOption(1)
			endif
					
			//??:?????,??????????115?????
			$Task22 = IsTaskDone( -1, 1762 )
			if $Task22 != 0
				DisableNpcOption(2)
			endif
			
		endif
		
		//??:??
		if $profession == 3		
			
			//??:?????,??????????100?????
			$Task13 = IsTaskDone( -1, 1484 )		
			if $Task13 != 0
				DisableNpcOption(1)
			endif
					
			//??:?????,??????????115?????
			$Task23 = IsTaskDone( -1, 1763 )
			if $Task23 != 0
				DisableNpcOption(2)
			endif
			
		endif
		
		//??:??
		if $profession == 4		
			
			//??:?????,??????????100?????
			$Task14 = IsTaskDone( -1, 1485 )		
			if $Task14 != 0
				DisableNpcOption(1)
			endif
					
			//??:?????,??????????115?????
			$Task24 = IsTaskDone( -1, 1764 )
			if $Task24 != 0
				DisableNpcOption(2)
			endif
			
		endif
		
		//??:??
		if $profession == 5		
			
			//??:?????,??????????100?????
			$Task15 = IsTaskDone( -1, 1486 )		
			if $Task15 != 0
				DisableNpcOption(1)
			endif
					
			//??:?????,??????????115?????
			$Task25 = IsTaskDone( -1, 1765 )
			if $Task25 != 0
				DisableNpcOption(2)
			endif
			
		endif
		
		//??:???
		if $profession == 6		
			
			//??:?????,??????????100?????
			$Task16 = IsTaskDone( -1, 1737 )		
			if $Task16 != 0
				DisableNpcOption(1)
			endif
					
			//??:?????,??????????115?????
			$Task26 = IsTaskDone( -1, 1766 )
			if $Task26 != 0
				DisableNpcOption(2)
			endif
			
		endif
		
		
		//??:????,?????????
		$Task0 = IsTaskDone( -1, 1871 )
		$profession = GetPlayerInfo( -1, "profession" )
		
		if $Task0 != 0
			DisableNpcOption(3)
		endif
		
	}
	
	function OnOption0(){
		
		//??????,???????????
		$bag_count0 = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count0 < 1
			BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
			return
		endif
		
		//????????????,?????????
		$item0 = GetPlayerInfo( -1, "item", 59284 )
		if $item0 > 0
			BC( "dialogbox", "player", -1, "You have already got a Master Skill-Sacred Armor. " )
			return
		endif
		
		//???????????,?????????
		$skill01 = GetSkillLevel( -1, 8026 )
		$skill02 = GetSkillLevel( -1, 8124 )
		$skill03 = GetSkillLevel( -1, 8223 )
		$skill04 = GetSkillLevel( -1, 8323 )
		$skill05 = GetSkillLevel( -1, 8425 )
		$skill06 = GetSkillLevel( -1, 12019 )		
		if $skill01 > 0 
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif		
		if $skill02 > 0
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif	
		if $skill03 > 0 
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif	
		if $skill04 > 0
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif
		if $skill05 > 0
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif
		if $skill06 > 0
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif
		
		AddPlayerInfo( -1, "item", 59284, 1 )
	}

	function OnOption1(){
		$profession1 = GetPlayerInfo( -1, "profession" )
		
		//??:??
		if $profession1 == 1		
			
			//?????????
			$item1 = GetPlayerInfo( -1, "item", 59273 )
			if $item1 > 0
				BC( "dialogbox", "player", -1, "Don't you already have the Sword Flurry skill?" )
				return
			endif	
			
			//????????
			$skill1 = GetSkillLevel( -1, 8022 )
			if $skill1 > 0
				BC( "screen", "player", -1, "Sorry! You have already learned the Sword Flurry skill." )
				return
			endif		
			
			//??????
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count1 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59273, 1 )
			return
		endif
		
		//??:??
		if $profession1 == 2		
			
			//?????????
			$item1 = GetPlayerInfo( -1, "item", 59274 )
			if $item1 > 0
				BC( "dialogbox", "player", -1, "Don't you already have the Consecration skill?" )
				return
			endif	
			
			//????????
			$skill1 = GetSkillLevel( -1, 8121 )
			if $skill1 > 0
				BC( "screen", "player", -1, "Sorry! You have already learned the Consecration skill." )
				return
			endif		
	
			//??????????
			$skill1 = GetSkillLevel( -1, 8160 )
			if $skill1 > 0
				BC( "screen", "player", -1, "Sorry, your Master Skill-Consecration has been combined into Brutal Rescue-Exalted. " )
				return
			endif		
					
			//??????
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count1 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59274, 1 )
			return
		endif
		
		//??:??
		if $profession1 == 3		
			
			//?????????
			$item1 = GetPlayerInfo( -1, "item", 59275 )
			if $item1 > 0
				BC( "dialogbox", "player", -1, "Don't you already have the Fission skill?" )
				return
			endif	
			
			//????????
			$skill1 = GetSkillLevel( -1, 8221 )
			if $skill1 > 0
				BC( "screen", "player", -1, "Sorry! You have already learned the Fission skill." )
				return
			endif		
			
			//??????
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count1 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59275, 1 )
			return
		endif
		
		//??:??
		if $profession1 == 4		
			
			//?????????
			$item1 = GetPlayerInfo( -1, "item", 59276 )
			if $item1 > 0
				BC( "dialogbox", "player", -1, "Don't you already have the Magic Aura skill?" )
				return
			endif	
			
			//????????
			$skill1 = GetSkillLevel( -1, 8322 )
			if $skill1 > 0
				BC( "screen", "player", -1, "Sorry! You have already learned the Magic Aura skill." )
				return
			endif		
			
			//??????
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count1 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59276, 1 )
			return
		endif
		
		//??:??
		if $profession1 == 5		
			
			//?????????
			$item1 = GetPlayerInfo( -1, "item", 59277 )
			if $item1 > 0
				BC( "dialogbox", "player", -1, "Have you already got a Master Skill-Holy Infusion?" )
				return
			endif	
			
			//????????
			$skill1 = GetSkillLevel( -1, 8422 )
			if $skill1 > 0
				BC( "screen", "player", -1, "Sorry! You have learned Master Skill-Holy Infusion." )
				return
			endif		
			
			//??????
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count1 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59277, 1 )
			return
		endif
		
		//??:???
		if $profession1 == 6		
			
			//?????????
			$item1 = GetPlayerInfo( -1, "item", 59321 )
			if $item1 > 0
				BC( "dialogbox", "player", -1, "Have you already got a Master Skill-Tortoise Pact?" )
				return
			endif	
			
			//????????
			$skill1 = GetSkillLevel( -1, 12020 )
			if $skill1 > 0
				BC( "screen", "player", -1, "Sorry! You have learned Master Skill-Tortoise Pact." )
				return
			endif		
			
			//??????
			$bag_count1 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count1 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59321, 1 )
			return
		endif		
		
	}

	function OnOption2(){
		
		$profession2 = GetPlayerInfo( -1, "profession" )

		//??:??
		if $profession2 == 1		
		
			//?????????
			$item2 = GetPlayerInfo( -1, "item", 59278 )
			if $item2 > 0
				BC( "dialogbox", "player", -1, "Have you already got a Master Skill-Blade Shield?" )
				return
			endif
			
			//????????
			$skill2 = GetSkillLevel( -1, 8025 )
			if $skill2 > 0
				BC( "screen", "player", -1, "Sorry! You have learned Master Skill-Blade Shield." )
				return
			endif
			
			//??????
			$bag_count2 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count2 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59278, 1 )
			return
		endif
		
		//??:??
		if $profession2 == 2		
			
			//?????????
			$item2 = GetPlayerInfo( -1, "item", 59279 )
			if $item2 > 0
				BC( "dialogbox", "player", -1, "Have you already got a Master Skill-Holy Glory?" )
				return
			endif
			
			//????????
			$skill2 = GetSkillLevel( -1, 8123 )
			if $skill2 > 0
				BC( "screen", "player", -1, "Sorry! You have learned Master Skill-Holy Glory." )
				return
			endif
			
			//??????
			$bag_count2 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count2 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
		
			//????
			AddPlayerInfo( -1, "item", 59279, 1 )
			return
		endif
		
		//??:??
		if $profession2 == 3		
			
			//?????????
			$item2 = GetPlayerInfo( -1, "item", 59280 )
			if $item2 > 0
				BC( "dialogbox", "player", -1, "Have you already got a Master Skill-Shadow Ward?" )
				return
			endif
			
			//????????
			$skill2 = GetSkillLevel( -1, 8222 )
			if $skill2 > 0
				BC( "screen", "player", -1, "Sorry! You have learned Master Skill-Shadow Ward." )
				return
			endif
			
			//??????
			$bag_count2 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count2 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59280, 1 )
			return
		endif
		
		//??:??
		if $profession2 == 4		
			
			//?????????
			$item2 = GetPlayerInfo( -1, "item", 59281 )
			if $item2 > 0
				BC( "dialogbox", "player", -1, "Have you already got a Master Skill-Flameblast?" )
				return
			endif	
			
			//????????
			$skill2 = GetSkillLevel( -1, 8321 )
			if $skill2 > 0
				BC( "screen", "player", -1, "Sorry! You have learned Master Skill-Flameblast." )
				return
			endif
			
			//??????
			$bag_count2 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count2 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59281, 1 )
			return
		endif
		
		//??:??
		if $profession2 == 5		
			
			//?????????
			$item2 = GetPlayerInfo( -1, "item", 59282 )
			if $item2 > 0
				BC( "dialogbox", "player", -1, "Have you already got a Master Skill-Void?" )
				return
			endif
			
			//????????
			$skill2 = GetSkillLevel( -1, 8426 )
			if $skill2 > 0
				BC( "screen", "player", -1, "Sorry! You have learned Master Skill-Void." )
				return
			endif
			
			//??????
			$bag_count2 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count2 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59282, 1 )
			return
		endif
		
		//??:???
		if $profession2 == 6		
			
			//?????????
			$item2 = GetPlayerInfo( -1, "item", 59322 )
			if $item2 > 0
				BC( "dialogbox", "player", -1, "Have you already got a Master Skill-Annihilation?" )
				return
			endif
			
			//????????
			$skill2 = GetSkillLevel( -1, 12021 )
			if $skill2 > 0
				BC( "screen", "player", -1, "Sorry! You have learned Master Skill-Annihilation." )
				return
			endif
			
			//??????
			$bag_count2 = GetPlayerInfo( -1, "nullitem", 0 )
			if $bag_count2 < 1
				BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
				return
			endif
			
			//????
			AddPlayerInfo( -1, "item", 59322, 1 )
			return
		endif
	
	}

	function OnOption3(){
		
		//??????,???????????
		$bag_count0 = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count0 < 1
			BC( "dialogbox", "player", -1, "Sorry! You haven't finished the Trial quest." )
			return
		endif
		
		//????????????,?????????
		$item0 = GetPlayerInfo( -1, "item", 44525 )
		if $item0 > 0
			BC( "dialogbox", "player", -1, "You already have a Master Skill - Luck Resistance book." )
			return
		endif
		
		//???????????,?????????
		$skill01 = GetSkillLevel( -1, 8034 )
		$skill02 = GetSkillLevel( -1, 8164 )
		$skill03 = GetSkillLevel( -1, 8266 )
		$skill04 = GetSkillLevel( -1, 8335)
		$skill05 = GetSkillLevel( -1, 8433 )
		$skill06 = GetSkillLevel( -1, 12052 )		
		if $skill01 > 0 
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif		
		if $skill02 > 0
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif	
		if $skill03 > 0 
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif	
		if $skill04 > 0
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif
		if $skill05 > 0
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif
		if $skill06 > 0
			BC( "screen", "player", -1, "You have already learned this skill." )
			return
		endif
		
		AddPlayerInfo( -1, "item", 44525, 1 )
	}