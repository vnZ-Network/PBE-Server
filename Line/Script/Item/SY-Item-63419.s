	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/05
	//		Author:???
	//		TaskName:SY-Item-63419.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 63392 )
		if $Item < 1
			BC( "screen", "player", -1, "Rechargeable Battery is available only on Treasure Probe." )
			return
		endif
		
		$value = GetPlayerVar( -1, 3680 )
		if $value != 0
			BC( "screen", "player", -1, "Treasure Probe fully recharged." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63419, 1 )
		if $SubItem != 0
			return
		endif
		
		$map = GetPlayerInfo( -1, "mapid" )
		//???????,?????????
//			 if $map == 129
//				$n = RandomNumber ( 1, 4 )
//				if $n == 1
//					SetPlayerVar( -1, 3680 , 3 )
//					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
//					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
//					return
//				endif
//				if $n == 2
//					SetPlayerVar( -1, 3680 , 87 )
//					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
//					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
//					return
//				endif
//				if $n == 3
//					SetPlayerVar( -1, 3680 , 86 )
//					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
//					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
//					return
//				endif
//				if $n == 4
//					SetPlayerVar( -1, 3680 , 119 )
//					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
//					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
//					return
//				endif
//			endif
			if $map == 3
				$n = RandomNumber ( 1, 3 )
//				if $n == 1
//					SetPlayerVar( -1, 3680 , 129 )
//					BC( "chat", "player", -1, "GUID:07355000010" )
//					BC( "dialogbox", "player", -1, "GUID:07355000011" )
//					return
//				endif
				if $n == 1
					SetPlayerVar( -1, 3680 , 87 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
					return
				endif
				if $n == 2
					SetPlayerVar( -1, 3680 , 86 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
					return
				endif
				if $n == 3
					SetPlayerVar( -1, 3680 , 119 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
					return
				endif
			endif
			if $map == 87
				$n = RandomNumber ( 1, 3 )
//				if $n == 1
//					SetPlayerVar( -1, 3680 , 129 )
//					BC( "chat", "player", -1, "GUID:07355000018" )
//					BC( "dialogbox", "player", -1, "GUID:07355000019" )
//					return
//				endif
				if $n == 1
					SetPlayerVar( -1, 3680 , 3 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
					return
				endif
				if $n == 2
					SetPlayerVar( -1, 3680 , 86 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
					return
				endif
				if $n == 3
					SetPlayerVar( -1, 3680 , 119 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
					return
				endif
			endif
			if $map == 86
				$n = RandomNumber ( 1, 3 )
//				if $n == 1
//					SetPlayerVar( -1, 3680 , 129 )
//					BC( "chat", "player", -1, "GUID:07355000026" )
//					BC( "dialogbox", "player", -1, "GUID:07355000027" )
//					return
//				endif
				if $n == 1
					SetPlayerVar( -1, 3680 , 3 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
					return
				endif
				if $n == 2
					SetPlayerVar( -1, 3680 , 87 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
					return
				endif
				if $n == 3
					SetPlayerVar( -1, 3680 , 119 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
					return
				endif
			endif
			if $map == 119
				$n = RandomNumber ( 1, 3 )
//				if $n == 1
//					SetPlayerVar( -1, 3680 , 129 )
//					BC( "chat", "player", -1, "GUID:07355000034" )
//					BC( "dialogbox", "player", -1, "GUID:07355000035" )
//					return
//				endif
				if $n == 1
					SetPlayerVar( -1, 3680 , 3 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
					return
				endif
				if $n == 2
					SetPlayerVar( -1, 3680 , 87 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
					return
				endif
				if $n == 3
					SetPlayerVar( -1, 3680 , 86 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
					return
				endif
			endif
			
			$n = RandomNumber ( 1, 4 )
//				if $n == 1
//					SetPlayerVar( -1, 3680 , 129 )
//					BC( "chat", "player", -1, "GUID:07355000042" )
//					BC( "dialogbox", "player", -1, "GUID:07355000043" )
//					return
//				endif
				if $n == 1
					SetPlayerVar( -1, 3680 , 3 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Aegean North." )
					return
				endif
				if $n == 2
					SetPlayerVar( -1, 3680 , 87 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Great Abyss." )
					return
				endif
				if $n == 3
					SetPlayerVar( -1, 3680 , 86 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Sea of Atlantis." )
					return
				endif
				if $n == 4
					SetPlayerVar( -1, 3680 , 119 )
					BC( "chat", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
					BC( "dialogbox", "player", -1, "Treasure Probe fully recharged. It shows that the treasure is around Dragon Emperor's Catacomb." )
					return
				endif
	}