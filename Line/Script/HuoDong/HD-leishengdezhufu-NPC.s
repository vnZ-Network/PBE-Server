	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/6
	//		Author:??
	//		TaskName:HD-leishengdezhufu-NPC.s
	//		TaskID:?????,????NPC??
	//
	//****************************************
	
	//24 ?????,???
	//31 ???
	//32 ???
	//11 ?????BOSS??????
	//33 ?????
	//3213 ????????????
	//3800 ???????????
	function OnRequest(){
		
		$level = GetPlayerInfo( -1, "level" )
			
		if $level < 1
			DisableNpcOption(0)
		endif
		if $level < 15
			DisableNpcOption(1)
		endif
		if $level < 30
			DisableNpcOption(2)
		endif
		if $level < 45
			DisableNpcOption(3)
		endif
		if $level < 60
			DisableNpcOption(4)
		endif		
		if $level < 75
			DisableNpcOption(5)
		endif	
		if $level < 90
			DisableNpcOption(6)
		endif	
		if $level < 105
			DisableNpcOption(7)
		endif
		//???????,????
		$monster_time = GetServerVar(28)
	//	BC( "chat", "player", -1, "cd:",$monster_time )
		if $monster_time > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
			DisableNpcOption(7)
		endif
		
	}
	
	//???????//1?????
	function OnOption0(){
		
		$level = GetPlayerInfo( -1, "level" )
		
		if $level < 1
			BC( "dialogbox", "player", -1, "Your can start your donation above level 1." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64001)
		if $count < 20
			BC( "dialogbox", "player", -1, "You do not have 20 Common Rocks." )
			return
		endif
		//????????
		$monster_level = GetServerVar(31)
		$player_number = GetServerVar(32)
		
		$result = SubPlayerInfo( -1, "item", 64001, 20)
		if $result == 0
			AddStatus( -1, 11916 , 1 )
			//???
			AddPlayerInfo(-1 ,"prestige" , 8 , 2 )
			$god_cd = GetServerVar(25)
			if $god_cd == 0
				$god_level = GetServerVar(26)
				if $god_level == 0
					BC( "screen", "player", -1, "Your tribute is accepted, but Thor's presence is still distant. You have received Thor's Blessings." )
				endif
				if $god_level == 1
					BC( "screen", "player", -1, "Your tribute is accepted.  You can feel Thor's presence in the air. You have received Thor's Blessings." )
				endif
				if $god_level == 2
					BC( "screen", "player", -1, "Your tribute is accepted. Thor is practically in the room! You have received Thor's Blessings." )
				endif
				
				//?????
				$god_count = GetServerVar(24)
				//???5000,????
				$god_count = $god_count + 20
				SetServerVar(24 , $god_count)
				//?????????
				$monster_level = $monster_level + $level
				$player_number = $player_number + 1
				SetServerVar(31 ,$monster_level )
				SetServerVar(32 ,$player_number )
				//?????????????????
				$field_number = GetServerVar(33)
				SetPlayerVar(-1 ,3800 ,$field_number )
				$line = GetServerLineID()
				SetPlayerVar(-1 ,3213 ,$line )
				//????????
				SetPlayerVar(-1 ,11 ,1 )
			//	BC( "chat", "player", -1, "level:",$monster_level ,"num:",$player_number )
			else
				BC( "screen", "player", -1, "Thor is sleeping. His servant has received the tribute. You have Thor's Blessings." )
			endif
		endif
		
	}
	
	//???????//15?????
	function OnOption1(){
			
		//?????,???
		$monster_level = GetServerVar(31)
		$player_number = GetServerVar(32)
		
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 15
			BC( "dialogbox", "player", -1, "Your can start your donation when you got level 15." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64002)
		if $count < 20
			BC( "dialogbox", "player", -1, "You do not have 20 Artistic Statues." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64002, 20)
		if $result == 0
			AddStatus( -1, 11917 , 1 )
			AddPlayerInfo(-1 ,"prestige" , 8 , 5 )
			$god_cd = GetServerVar(25)
			if $god_cd == 0
				$god_level = GetServerVar(26)
				if $god_level == 0
					BC( "screen", "player", -1, "Your tribute is accepted, but Thor's presence is still distant. You have received Thor's Blessings." )
				endif
				if $god_level == 1
					BC( "screen", "player", -1, "Your tribute is accepted.  You can feel Thor's presence in the air. You have received Thor's Blessings." )
				endif
				if $god_level == 2
					BC( "screen", "player", -1, "Your tribute is accepted. Thor is practically in the room! You have received Thor's Blessings." )
				endif
				//?????
				$god_count = GetServerVar(24)
				$god_count = $god_count + 25
				SetServerVar(24 , $god_count)
				//?????????
				$monster_level = $monster_level + $level
				$player_number = $player_number + 1
				SetServerVar(31 ,$monster_level )
				SetServerVar(32 ,$player_number )
				//?????????????????
				$field_number = GetServerVar(33)
				SetPlayerVar(-1 ,3800 ,$field_number )
				$line = GetServerLineID()
				SetPlayerVar(-1 ,3213 ,$line )
								//????????
				SetPlayerVar(-1 ,11 ,1 )
			else
				BC( "screen", "player", -1, "Thor is sleeping. His servant has received the tribute. You have Thor's Blessings." )
			endif
		endif
	
	}
	
	//????????//30????
	function OnOption2(){
				//?????,???
		$monster_level = GetServerVar(31)
		$player_number = GetServerVar(32)
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 30
			BC( "dialogbox", "player", -1, "Your can start your donation when you got level 30." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64003)
		if $count < 20
			BC( "dialogbox", "player", -1, "You do not have 20 Raw Jades" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64003, 20)
		if $result == 0
			AddStatus( -1, 11918 , 1 )
			AddPlayerInfo(-1 ,"prestige" , 8 , 8 )
			$god_cd = GetServerVar(25)
			if $god_cd == 0
				$god_level = GetServerVar(26)
				if $god_level == 0
					BC( "screen", "player", -1, "Your tribute is accepted, but Thor's presence is still distant. You have received Thor's Blessings." )
				endif
				if $god_level == 1
					BC( "screen", "player", -1, "Your tribute is accepted.  You can feel Thor's presence in the air. You have received Thor's Blessings." )
				endif
				if $god_level == 2
					BC( "screen", "player", -1, "Your tribute is accepted. Thor is practically in the room! You have received Thor's Blessings." )
				endif
				//?????
				$god_count = GetServerVar(24)
				$god_count = $god_count + 30
				SetServerVar(24 , $god_count)
				//?????????
				$monster_level = $monster_level + $level
				$player_number = $player_number + 1
				SetServerVar(31 ,$monster_level )
				SetServerVar(32 ,$player_number )
				//?????????????????
				$field_number = GetServerVar(33)
				SetPlayerVar(-1 ,3800 ,$field_number )
				$line = GetServerLineID()
				SetPlayerVar(-1 ,3213 ,$line )
								//????????
				SetPlayerVar(-1 ,11 ,1 )
			else
				BC( "screen", "player", -1, "Thor is sleeping. His servant has received the tribute. You have Thor's Blessings." )
			endif
		endif
	}
	
	//???????
	function OnOption3(){
		
				//?????,???
		$monster_level = GetServerVar(31)
		$player_number = GetServerVar(32)
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 45
			BC( "dialogbox", "player", -1, "Your can start your donation when you got level 45." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64004)
		if $count < 20
			BC( "dialogbox", "player", -1, "You do not have 20 Pure Jades." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64004, 20)
		if $result == 0
			AddStatus( -1, 11919 , 1 )
			AddPlayerInfo(-1 ,"prestige" , 8 , 12 )
			$god_cd = GetServerVar(25)
			if $god_cd == 0
				$god_level = GetServerVar(26)
				if $god_level == 0
					BC( "screen", "player", -1, "Your tribute is accepted, but Thor's presence is still distant. You have received Thor's Blessings." )
				endif
				if $god_level == 1
					BC( "screen", "player", -1, "Your tribute is accepted.  You can feel Thor's presence in the air. You have received Thor's Blessings." )
				endif
				if $god_level == 2
					BC( "screen", "player", -1, "Your tribute is accepted. Thor is practically in the room! You have received Thor's Blessings." )
				endif
				//?????
				$god_count = GetServerVar(24)
				$god_count = $god_count + 35
				SetServerVar(24 , $god_count)
				//?????????
				$monster_level = $monster_level + $level
				$player_number = $player_number + 1
				SetServerVar(31 ,$monster_level )
				SetServerVar(32 ,$player_number )
				//?????????????????
				$field_number = GetServerVar(33)
				SetPlayerVar(-1 ,3800 ,$field_number )
				$line = GetServerLineID()
				SetPlayerVar(-1 ,3213 ,$line )
								//????????
				SetPlayerVar(-1 ,11 ,1 )
			else
				BC( "screen", "player", -1, "Thor is sleeping. His servant has received the tribute. You have Thor's Blessings." )
			endif
		endif
	}
	
	//??????
	function OnOption4(){
				//?????,???
		$monster_level = GetServerVar(31)
		$player_number = GetServerVar(32)
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 60
			BC( "dialogbox", "player", -1, "Your can start your donation when you got level 60." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64005)
		if $count < 20
			BC( "dialogbox", "player", -1, "You do not have 20 Obsidian Powders." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64005, 20)
		if $result == 0
			AddStatus( -1, 11920 , 1 )
			AddPlayerInfo(-1 ,"prestige" , 8 , 16 )
			$god_cd = GetServerVar(25)
			if $god_cd == 0
				$god_level = GetServerVar(26)
				if $god_level == 0
					BC( "screen", "player", -1, "Your tribute is accepted, but Thor's presence is still distant. You have received Thor's Blessings." )
				endif
				if $god_level == 1
					BC( "screen", "player", -1, "Your tribute is accepted.  You can feel Thor's presence in the air. You have received Thor's Blessings." )
				endif
				if $god_level == 2
					BC( "screen", "player", -1, "Your tribute is accepted. Thor is practically in the room! You have received Thor's Blessings." )
				endif
				//?????
				$god_count = GetServerVar(24)
				$god_count = $god_count + 40
				SetServerVar(24 , $god_count)
				//?????????
				$monster_level = $monster_level + $level
				$player_number = $player_number + 1
				SetServerVar(31 ,$monster_level )
				SetServerVar(32 ,$player_number )
				//?????????????????
				$field_number = GetServerVar(33)
				SetPlayerVar(-1 ,3800 ,$field_number )
				$line = GetServerLineID()
				SetPlayerVar(-1 ,3213 ,$line )
								//????????
				SetPlayerVar(-1 ,11 ,1 )
			else
				BC( "screen", "player", -1, "Thor is sleeping. His servant has received the tribute. You have Thor's Blessings." )
			endif
		endif
	}
	
	//?????????
	function OnOption5(){
		
		//?????,???
		$monster_level = GetServerVar(31)
		$player_number = GetServerVar(32)
		
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 75
			BC( "dialogbox", "player", -1, "Your can start your donation when you got level 75." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64006)
		if $count < 20
			BC( "dialogbox", "player", -1, "You do not have 20 Flawless Obsidians." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64006, 20)
		if $result == 0
			AddStatus( -1, 11921 , 1 )
			AddPlayerInfo(-1 ,"prestige" , 8 , 21 )
			$god_cd = GetServerVar(25)
			if $god_cd == 0
				$god_level = GetServerVar(26)
				if $god_level == 0
					BC( "screen", "player", -1, "Your tribute is accepted, but Thor's presence is still distant. You have received Thor's Blessings." )
				endif
				if $god_level == 1
					BC( "screen", "player", -1, "Your tribute is accepted.  You can feel Thor's presence in the air. You have received Thor's Blessings." )
				endif
				if $god_level == 2
					BC( "screen", "player", -1, "Your tribute is accepted. Thor is practically in the room! You have received Thor's Blessings." )
				endif
				//?????
				$god_count = GetServerVar(24)
				$god_count = $god_count + 45
				SetServerVar(24 , $god_count)
				//?????????
				$monster_level = $monster_level + $level
				$player_number = $player_number + 1
				SetServerVar(31 ,$monster_level )
				SetServerVar(32 ,$player_number )
				//?????????????????
				$field_number = GetServerVar(33)
				SetPlayerVar(-1 ,3800 ,$field_number )
				$line = GetServerLineID()
				SetPlayerVar(-1 ,3213 ,$line )
								//????????
				SetPlayerVar(-1 ,11 ,1 )
			else
				BC( "screen", "player", -1, "Thor is sleeping. His servant has received the tribute. You have Thor's Blessings." )
			endif
		endif
	}
	
	//???
	function OnOption6(){
		//?????,???
		$monster_level = GetServerVar(31)
		$player_number = GetServerVar(32)
		$level = GetPlayerInfo( -1, "level" )
		if $level < 90
			BC( "dialogbox", "player", -1, "Your can start your donation when you got level 90 ." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64007)
		if $count < 20
			BC( "dialogbox", "player", -1, "You do not have 20 Carbites." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64007, 20)
		if $result == 0
			AddStatus( -1, 11922 , 1 )
			AddPlayerInfo(-1 ,"prestige" , 8 , 26 )
			$god_cd = GetServerVar(25)
			if $god_cd == 0
				$god_level = GetServerVar(26)
				if $god_level == 0
					BC( "screen", "player", -1, "Your tribute is accepted, but Thor's presence is still distant. You have received Thor's Blessings." )
				endif
				if $god_level == 1
					BC( "screen", "player", -1, "Your tribute is accepted.  You can feel Thor's presence in the air. You have received Thor's Blessings." )
				endif
				if $god_level == 2
					BC( "screen", "player", -1, "Your tribute is accepted. Thor is practically in the room! You have received Thor's Blessings." )
				endif
				//?????
				$god_count = GetServerVar(24)
				$god_count = $god_count + 50
				SetServerVar(24 , $god_count)
				//?????????
				$monster_level = $monster_level + $level
				$player_number = $player_number + 1
				SetServerVar(31 ,$monster_level )
				SetServerVar(32 ,$player_number )
				//?????????????????
				$field_number = GetServerVar(33)
				SetPlayerVar(-1 ,3800 ,$field_number )
				$line = GetServerLineID()
				SetPlayerVar(-1 ,3213 ,$line )
								//????????
				SetPlayerVar(-1 ,11 ,1 )
			else
				BC( "screen", "player", -1, "Thor is sleeping. His servant has received the tribute. You have Thor's Blessings." )
			endif
		endif
	}
	
	//???????
	function OnOption7(){
		//?????,???
		$monster_level = GetServerVar(31)
		$player_number = GetServerVar(32)
		$level = GetPlayerInfo( -1, "level" )
		if $level < 105
			BC( "dialogbox", "player", -1, "Must be level 105+ to donate!" )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64008)
		if $count < 20
			BC( "dialogbox", "player", -1, "You carry less than 20 Perfect Carbite Statue!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64008, 20)
		if $result == 0
			AddStatus( -1, 11923 , 1 )
			AddPlayerInfo(-1 ,"prestige" , 8 , 30 )
			$god_cd = GetServerVar(25)
			if $god_cd == 0
				$god_level = GetServerVar(26)
				if $god_level == 0
					BC( "screen", "player", -1, "Your tribute is accepted, but Thor's presence is still distant. You have received Thor's Blessings." )
				endif
				if $god_level == 1
					BC( "screen", "player", -1, "Your tribute is accepted.  You can feel Thor's presence in the air. You have received Thor's Blessings." )
				endif
				if $god_level == 2
					BC( "screen", "player", -1, "Your tribute is accepted. Thor is practically in the room! You have received Thor's Blessings." )
				endif
				//?????
				$god_count = GetServerVar(24)
				$god_count = $god_count + 55
				SetServerVar(24 , $god_count)
				//?????????
				$monster_level = $monster_level + $level
				$player_number = $player_number + 1
				SetServerVar(31 ,$monster_level )
				SetServerVar(32 ,$player_number )
				//?????????????????
				$field_number = GetServerVar(33)
				SetPlayerVar(-1 ,3800 ,$field_number )
				$line = GetServerLineID()
				SetPlayerVar(-1 ,3213 ,$line )
								//????????
				SetPlayerVar(-1 ,11 ,1 )
			else
				BC( "screen", "player", -1, "Thor is sleeping. His servant has received the tribute. You have Thor's Blessings." )
			endif
		endif
	}