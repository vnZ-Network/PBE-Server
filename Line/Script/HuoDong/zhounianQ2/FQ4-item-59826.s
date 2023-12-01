	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??????
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){
		
	//59825	?????????
	//59826	???
	//59827	?????
	//59828	?????
	//59831	?????????
	//59832	????
	//59833	????????

		$isaccepted = IsTaskAccept( -1, 1725 )
		if $isaccepted == 0
			$taskstep = GetPlayerVar( -1, 3303 )
			$md = GetPlayerInfo( -1, "mapid" )
			$mx = GetPlayerInfo( -1, "mapposx" )
			$my = GetPlayerInfo( -1, "mapposy" )
			if $taskstep == 1
				BC( "dialogbox", "player", -1, "The first legend says that the Obsidian Turtle appeared in this world ages ago, amidst a ring of stones on Easter Island. Go to Easter Island South (64,105) and use the Dark Origin Crystal to find out more about the Ancient Obsidian Turtle.")
				$taskstep = $taskstep + 1
				SetPlayerVar( -1, 3303 , $taskstep )
			endif
			if $taskstep == 2
				if $md == 106
					if $mx > 58
						if $mx < 72
							if $my > 99
								if $my < 111
									BC( "dialogbox", "player", -1, "The second legend tells of the Obsidian Turtle's dealings with the White Tiger, which were many and varied over the ages.\nGo to the White Tiger Den (133,110) to discover more about the Obsidian Turtle.")
									$taskstep = $taskstep + 1
									SetPlayerVar( -1, 3303 , $taskstep )
									PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
									return
								endif
							endif
						endif
					endif
				endif
				BC( "dialogbox", "player", -1, "The first legend says that the Obsidian Turtle appeared in this world ages ago, amidst a ring of stones on Easter Island. Go to Easter Island South (64,105) and use the Dark Origin Crystal to find out more about the Ancient Obsidian Turtle.")
			endif
			if $taskstep == 3
				if $md == 456
					if $mx > 128
						if $mx < 138
							if $my > 106
								if $my < 113
									BC( "dialogbox", "player", -1, "The third legend indicates that the Dark Origin Crystal itself contains the information on making the Obsidian Turtle Soul! All you have to do is open it, and the knowledge can be yourse.\nRight-click the Dark Origin Crystal one final time to complete the quest.")
									$taskstep = $taskstep + 1
									SetPlayerVar( -1, 3303 , $taskstep )
									PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
									return
								endif
							endif
						endif
					endif
				endif
				BC( "dialogbox", "player", -1, "The second legend tells of the Obsidian Turtle's dealings with the White Tiger, which were many and varied over the ages.\nGo to the White Tiger Den (133,110) to discover more about the Obsidian Turtle.")
			endif
			if $taskstep == 4
				BC( "messagebox", "player", -1, "You got the Ancient Rune.")
				AddPlayerInfo( -1, "item",  59827 , 1)
				SetTaskDone( -1 , 1725 )
				$taskstep = $taskstep + 1
				SetPlayerVar( -1, 3303 , $taskstep )
				return
			endif
		else
			if $taskstep == 5
				BC( "screen", "player", -1, "You completed the Ancient Turtle quest.")
			else
				BC( "screen", "player", -1, "Find Hygec to get the quest.")
			endif
		endif
		
		
		
		
	}