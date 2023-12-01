		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59244.s
	//		TaskID:?????
	//****************************************
 
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$round = GetPlayerVar( -1 , 3264 )
		
		if $lv < 40
			BC( "screen", "player", -1, "You can't use it before reaching LV40." )
			return
		endif
		
		if $lv < 50
			if $round == 1
				BC( "screen", "player", -1, "You've obtained the salary of LV40-49. You can get your salary again when you reach level 50-59." )
				return
			else
				AddPlayerInfo( -1, "givepoint", 200 )
				SetPlayerVar( -1 , 3264 , 1 )
				return
			endif
		endif
		
		if $lv < 60
			if $round == 2
				BC( "screen", "player", -1, "You've obtained the salary of LV50-59. You can get your salary again when you reach LV60-69." )
				return
			else
				if $round == 1
					AddPlayerInfo( -1, "givepoint", 400 )
					SetPlayerVar( -1 , 3264 , 2 )
					return
				endif
				
				if $round == 0
					AddPlayerInfo( -1, "givepoint", 200 )
					AddPlayerInfo( -1, "givepoint", 400 )
					SetPlayerVar( -1 , 3264 , 2 )
					return	
				endif
			endif
		endif
		
		if $lv < 70
			if $round == 3
				BC( "screen", "player", -1, "You've obtained the salary of LV60-69. You can get your salary again when you reach LV70-79." )
				return
			else
				if $round == 2
					AddPlayerInfo( -1, "givepoint", 600 )
					SetPlayerVar( -1 , 3264 , 3 )
					return
				endif
				
				if $round == 1
					AddPlayerInfo( -1, "givepoint", 400 )
					AddPlayerInfo( -1, "givepoint", 600 )
					SetPlayerVar( -1 , 3264 , 3 )
					return
				endif
				
				if $round == 0
					AddPlayerInfo( -1, "givepoint", 200 )
					AddPlayerInfo( -1, "givepoint", 400 )
					AddPlayerInfo( -1, "givepoint", 600 )
					SetPlayerVar( -1 , 3264 , 3 )
					return	
				endif
			endif
		endif
			
		if $lv < 80
			if $round == 4
				BC( "screen", "player", -1, "You've obtained the salary of LV70-79. You can get your salary again when you reach LV80-89." )
				return
			else
				if $round == 3
					AddPlayerInfo( -1, "givepoint", 1200 )
					SetPlayerVar( -1 , 3264 , 4 )
					return
				endif
				
				if $round == 2
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					SetPlayerVar( -1 , 3264 , 4 )
					return
				endif
				
				if $round == 1
					AddPlayerInfo( -1, "givepoint", 400 )
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					SetPlayerVar( -1 , 3264 , 4 )
					return
				endif
				
				
				if $round == 0
					AddPlayerInfo( -1, "givepoint", 200 )
					AddPlayerInfo( -1, "givepoint", 400 )
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					SetPlayerVar( -1 , 3264 , 4 )
					return	
				endif
			endif
		endif
		
		
		if $lv < 90
			if $round == 5
				BC( "screen", "player", -1, "You've obtained the salary of LV80-89. You can get your salary again when you reach LV90-99." )
				return
			else
				if $round == 4
					AddPlayerInfo( -1, "givepoint", 4000 )
					SetPlayerVar( -1 , 3264 , 5 )
					return
				endif
				
				if $round == 3
					AddPlayerInfo( -1, "givepoint", 1200 )
					AddPlayerInfo( -1, "givepoint", 4000 )
					SetPlayerVar( -1 , 3264 , 5 )
					return	
				endif
				
				if $round == 2
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					AddPlayerInfo( -1, "givepoint", 4000 )
					SetPlayerVar( -1 , 3264 , 5 )
					return	
				endif
				
				if $round == 1
					AddPlayerInfo( -1, "givepoint", 400 )
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					AddPlayerInfo( -1, "givepoint", 4000 )
					SetPlayerVar( -1 , 3264 , 5 )
					return	
				endif
				
				if $round == 0
					AddPlayerInfo( -1, "givepoint", 200 )
					AddPlayerInfo( -1, "givepoint", 400 )
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					AddPlayerInfo( -1, "givepoint", 4000 )
					SetPlayerVar( -1 , 3264 , 5 )
					return	
				endif
			endif
		endif
		
		if $lv >= 90
			if $round == 6
				BC( "screen", "player", -1, "You've obtained all your salary. Please delete this item." )
				return
			else
				$result = SubPlayerInfo( -1 , "item" , 59244 , 1 )
				if $result != 0
					return
				endif
				
				if $round == 5
					AddPlayerInfo( -1, "givepoint", 10000 )
					SetPlayerVar( -1 , 3264 , 6 )
					return
				endif
				
				if $round == 4
					AddPlayerInfo( -1, "givepoint", 4000 )
					AddPlayerInfo( -1, "givepoint", 10000 )
					SetPlayerVar( -1 , 3264 , 6 )
					return
				endif
				
				if $round == 3
					AddPlayerInfo( -1, "givepoint", 1200 )
					AddPlayerInfo( -1, "givepoint", 4000 )
					AddPlayerInfo( -1, "givepoint", 10000 )
					SetPlayerVar( -1 , 3264 , 6 )
					return
				endif	
				
				if $round == 2
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					AddPlayerInfo( -1, "givepoint", 4000 )
					AddPlayerInfo( -1, "givepoint", 10000 )
					SetPlayerVar( -1 , 3264 , 6 )
					return
				endif
				
				if $round == 1
					AddPlayerInfo( -1, "givepoint", 400 )
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					AddPlayerInfo( -1, "givepoint", 4000 )
					AddPlayerInfo( -1, "givepoint", 10000 )
					SetPlayerVar( -1 , 3264 , 6 )
					return
				endif	
				
				if $round == 0
					AddPlayerInfo( -1, "givepoint", 200 )
					AddPlayerInfo( -1, "givepoint", 400 )
					AddPlayerInfo( -1, "givepoint", 600 )
					AddPlayerInfo( -1, "givepoint", 1200 )
					AddPlayerInfo( -1, "givepoint", 4000 )
					AddPlayerInfo( -1, "givepoint", 10000 )
					SetPlayerVar( -1 , 3264 , 6 )
					return	
				endif
			endif
		endif
		
						
	}
	
	