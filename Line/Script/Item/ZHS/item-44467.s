	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-9-4
	//		Author:??
	//		TaskName:4428.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		$ceshi = 1
		if $ceshi == 1 
				//???????
			$quality = GetBattlePetInfo( -1, "quality" )
			if $quality == 0
				#quality = "Common"
			endif
			if $quality == 1
				#quality = "Great"
			endif
			if $quality == 2
				#quality = "Amazing"
			endif
			if $quality == 3
				#quality = "Excellent"
			endif
			if $quality == 4
				#quality = "Perfect"
			endif		
			BC( "chat", "player", -1, "Your Pet Quality is",#quality,"Quality" )
			$clever = GetBattlePetInfo( -1, "clever" )
			BC( "chat", "player", -1, "Your Pet's Fotify LV is",$clever,"LV" )
			$washtimes = GetBattlePetInfo( -1, "washtimes" )
			BC( "chat", "player", -1, "Remaining Pet Retrain times is",$washtimes," times today." )
			$nature = GetBattlePetInfo( -1, "nature" )
			if $nature == 0
				#quality = "Naughty"
			endif		
			if $nature == 1
				#quality = "Serious"
			endif	
			if $nature == 2
				#quality = "Reckless"
			endif	
			if $nature == 3
				#quality = "Excited"
			endif	
			if $nature == 4
				#quality = "Cowardly"
			endif	
			if $nature == 5
				#quality = "Calm"
			endif	
			if $nature == 6
				#quality = "Strength"
			endif	
			if $nature == 7
				#quality = "Forthright"
			endif	
			BC( "chat", "player", -1, "Pet Mood is",#quality,"" )
			$hole0 =  GetBattlePetInfo( -1,"hole", 0 )
			if $hole0 == 0
				#hole0 = "Attack"
			endif		
			if $hole0 == 1
				#hole0 = "Auxiliary"
			endif	
			if $hole0 == 2
				#hole0 = "Support"
			endif	
			if $hole0 == 3
				#hole0 = "Passive"
			endif	
			if $hole0 == 4
				#hole0 = "Fortify"
			endif	
			if $hole0 == 5
				#hole0 = "Special"
			endif	
			if $hole0 == -2
				#hole0 = "Not activated yet."
			endif	
			BC( "chat", "player", -1, "Pet's first skill slot's type is",#hole0,"Type Skill" )		
			$hole1 =  GetBattlePetInfo( -1,"hole", 1 )
			if $hole1 == 0
				#hole1 = "Attack"
			endif		
			if $hole1 == 1
				#hole1 = "Auxiliary"
			endif	
			if $hole1 == 2
				#hole1 = "Support"
			endif	
			if $hole1 == 3
				#hole1 = "Passive"
			endif	
			if $hole1 == 4
				#hole1 = "Fortify"
			endif	
			if $hole1 == 5
				#hole1 = "Special"
			endif	
			if $hole1 == -2
				#hole1 = "Not activated yet."
			endif	
			BC( "chat", "player", -1, "Pet's second skill slot's type is",#hole1,"Type Skill" )
			$hole2 =  GetBattlePetInfo( -1,"hole", 2 )
			if $hole2 == 0
				#hole2 = "Attack"
			endif		
			if $hole2 == 1
				#hole2 = "Auxiliary"
			endif	
			if $hole2 == 2
				#hole2 = "Support"
			endif	
			if $hole2 == 3
				#hole2 = "Passive"
			endif	
			if $hole2 == 4
				#hole2 = "Fortify"
			endif	
			if $hole2 == 5
				#hole2 = "Special"
			endif	
			if $hole2 == -2
				#hole2 = "Not activated yet."
			endif	
			BC( "chat", "player", -1, "Pet's third skill slot's type is",#hole2,"Type Skill" )
			$hole3 =  GetBattlePetInfo( -1,"hole", 3 )
			if $hole3 == 0
				#hole3 = "Attack"
			endif		
			if $hole3 == 1
				#hole3 = "Auxiliary"
			endif	
			if $hole3 == 2
				#hole3 = "Support"
			endif	
			if $hole3 == 3
				#hole3 = "Passive"
			endif	
			if $hole3 == 4
				#hole3 = "Fortify"
			endif	
			if $hole3 == 5
				#hole3 = "Special"
			endif	
			if $hole3 == -2
				#hole3 = "Not activated yet."
			endif	
			BC( "chat", "player", -1, "Pet's fourth skill slot's type is",#hole3,"Type Skill" )		
			$hole4 =  GetBattlePetInfo( -1,"hole", 4 )
			if $hole4 == 0
				#hole4 = "Attack"
			endif		
			if $hole4 == 1
				#hole4 = "Auxiliary"
			endif	
			if $hole4 == 2
				#hole4 = "Support"
			endif	
			if $hole4 == 3
				#hole4 = "Passive"
			endif	
			if $hole4 == 4
				#hole4 = "Fortify"
			endif	
			if $hole4 == 5
				#hole4 = "Special"
			endif	
			if $hole4 == -2
				#hole4 = "Not activated yet."
			endif	
			BC( "chat", "player", -1, "Pet's fifth skill slot's type is",#hole4,"Type Skill" )	
			$hole5 =  GetBattlePetInfo( -1,"hole", 5 )
			if $hole5 == 0
				#hole5 = "Attack"
			endif		
			if $hole5 == 1
				#hole5 = "Auxiliary"
			endif	
			if $hole5 == 2
				#hole5 = "Support"
			endif	
			if $hole5 == 3
				#hole5 = "Passive"
			endif	
			if $hole5 == 4
				#hole5 = "Fortify"
			endif	
			if $hole5 == 5
				#hole5 = "Special"
			endif	
			if $hole5 == -2
				#hole5 = "Not activated yet."
			endif	
			BC( "chat", "player", -1, "Pet's sixth skill slot's type is",#hole5,"Type Skill" )			
		endif
		//??????
			$clever = GetBattlePetInfo( -1, "clever" )
			if $clever > 9
				BC( "chat", "player", -1, "Can only be used to upgrade a pet which is lower than Grade 10. You need to combine a complete Holy Fortification Stone to fortify." )		
				return
			endif
			$clever = $clever + 1
			$result = SetBattlePetInfo( -1 ,"clever",$clever)
			if $result == -2
				BC( "chat", "player", -1, "No activated pet. Failed to fortify." )
				return		
			endif			
			if $result == -1
				SubPlayerInfo( -1 , "item", 44467 , 1)
				BC( "chat", "player", -1, "Upgrade Pet Fortify LV to",#clever,"LV" )		
			endif
	}