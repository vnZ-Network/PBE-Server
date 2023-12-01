	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/16
	//		Author:???
	//		TaskName:Item-Shengyujiezhi-59252.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
			
		$info = GetPlayerInfo(-1 , "nullitem", 0 )
				if $info == 0
						BC( "screen", "player", -1, "You do not have enough space in your Bag." )
						return
				endif
		
		//??????
		$result = SubPlayerInfo( -1, "item", 59253 , 5 )
		if $result == 0
			$random_item = RandomNumber(1, 10000)
			
			if $random_item <= 2000
				AddPlayerInfo( -1, "item", 37725, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Brzk)." )
				BC("chat", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Brzk)." )
			endif
			
			if $random_item > 2000
				if $random_item <= 4000
					AddPlayerInfo( -1, "item", 37726, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Chmp)." )
					BC("chat", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Chmp)." )
				endif
			endif
			
			if $random_item > 4000
				if $random_item <= 6000
					AddPlayerInfo( -1, "item", 37727, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Slyr)." )
					BC("chat", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Slyr)." )
				endif
			endif
			
			if $random_item > 6000
				if $random_item <= 8000
					AddPlayerInfo( -1, "item", 37728, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Mgus)." )
					BC("chat", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Mgus)." )
				endif
			endif
			
			if $random_item > 8000
				if $random_item <= 10000
					AddPlayerInfo( -1, "item", 37729, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Hrtc)." )
					BC("chat", "servergroup", -1, "The hero ",#name," combined enough Oracle Necklace Fragments to create a complete Oracle Necklace (Hrtc)." )
				endif
			endif
		endif
		
		//BC( "screen", "player", -1, "GUID:06763000021" )
	}