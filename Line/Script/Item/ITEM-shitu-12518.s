 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/11
	//		Author:???
	//		TaskName:ITEM-shitu-12518.s
	//		TaskID:????5???
	//****************************************
	
	function OnUseItem(){
	
	
	//-------------------------------
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		$count = GetTeamMemberCount(-1)
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		$headerID = GetTeamHeaderID( -1 )
		$size = GetTeamAreaSize( -1 )
		$id = GetPlayerID()
		$level = GetPlayerInfo ( $headerID , "level" )
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
	
	//------------????ID---------------
		if $mapid != 90
			BC( "screen", "player", -1, "According to the quest instruction, step 5 must be finished in Nile River West." )
			return
		endif
	//-------------------------------------------------------		
		if $player_x < 94
			BC( "screen", "player", -1, "According to the quest instruction, the requisite location of step 5 is not here." )
			return
		endif
		if $player_x > 104
			BC( "screen", "player", -1, "According to the quest instruction, the requisite location of step 5 is not here." )
			return
		endif
		if $player_y < 103
			BC( "screen", "player", -1, "According to the quest instruction, the requisite location of step 5 is not here." )
			return
		endif
		if $player_y > 113
			BC( "screen", "player", -1, "According to the quest instruction, the requisite location of step 5 is not here." )
			return
		endif
		//--------????????-----------------
		if $count < 2
			BC( "dialogbox", "player", -1, "To continue, the master must be the party leader, and  both the master and the disciples must be in the party without any other players." )
			return
		endif	
		
	//---------------?????????------------------------------		
		if $size > 8
			BC( "screen", "player", -1, "The party members must be together to trigger the quest." )
			return
		endif
		
		
	//---------------???????????????-------------------------------	
		if  $id != $headerID
			$re = CheckRelation($headerID ,$id )
			if $re != 2
				BC( "dialogbox", "player", -1, "You are not the disciple of the party leader. Quest cannot go on." )
				return
			endif
		else
			if $Men1 != -1
				if $id != $Men1
					$b = CheckRelation($id ,$Men1)
					if $b != 2
						BC( "dialogbox", "player", -1, "Some party members are not your disciples. Quest cannot go on." )
						return
					endif
				endif
			endif
			if $Men2 != -1
				if $id != $Men2
					$c = CheckRelation($id ,$Men2)
					if $c != 2
						BC( "dialogbox", "player", -1, "Some party members are not your disciples. Quest cannot go on." )
						return
					endif
				endif
			endif	
			if $Men3 != -1	
				if $id != $Men3
					$d = CheckRelation($id ,$Men3)
					if $d != 2
						BC( "dialogbox", "player", -1, "Some party members are not your disciples. Quest cannot go on." )
						return
					endif
				endif
			endif	
			if $Men4 != -1	
				if $id != $Men4
					$e = CheckRelation($id ,$Men4)
					if $e != 2
						BC( "dialogbox", "player", -1, "Some party members are not your disciples. Quest cannot go on." )
						return
					endif
				endif
			endif
			if $Men5 != -1	
				if $id != $Men5
					$f = CheckRelation($id ,$Men5)
					if $f != 2
						BC( "dialogbox", "player", -1, "Some party members are not your disciples. Quest cannot go on." )
						return
					endif
				endif
			endif	
			if $Men6 != -1	
				if $id != $Men6
					$a = CheckRelation($id ,$Men6)
					if $a != 2
						BC( "dialogbox", "player", -1, "Some party members are not your disciples. Quest cannot go on." )
						return
					endif
				endif
			endif
		endif
		//--------??item----------
		$info = SubPlayerInfo ( -1 , "item" , 12518 , 1 )
		if  $info != 0
			return
		endif
		$m = RandomNumber ( 0,1 )
		if $m == 0
			PlayEffect( -1, "common\shuangdong\tx_shuangdong_keep.ini" )
		endif
		if $m == 1
			PlayEffect( -1, "Common\xingyunyiji\tx_xingyunyiji_fire.ini" )
		endif
		//----???item------
		AddPlayerInfo ( -1 ,"item",12519, 1 )
		BC( "screen", "player", -1, "New quest instruction acquired. Please check you bag, and find the quest instruction item for more details." )
		
		//--------????????????----------
		if $headerID != $id
			return
		endif
		
		//--------????----------
		
		$n = RandomNumber ( 0,10 )
		$ExistStatus1 = IsExistStatus(-1,11592)
		if $ExistStatus1 == 0
			if $level > 44
				if $level < 55
					if $n < 3
						AddMonster (30176,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Fire Fox has just showed up!" )
					endif
				endif
			endif
			if $level > 54
				if $level < 65
					if $n < 3
						AddMonster (30181,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Fire Fox has just showed up!" )
					endif
				endif
			endif
			if $level > 64
				if $level < 75
					if $n < 3
						AddMonster (30186,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Fire Fox has just showed up!" )
					endif
				endif
			endif
			if $level > 74
				if $level < 85
					if $n < 3
						AddMonster (30191,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Fire Fox has just showed up!" )
					endif
				endif
			endif
			if $level > 84
				if $level < 95
					if $n < 3
						AddMonster (30186,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Fire Fox has just showed up!" )
					endif
				endif
			endif
			if $level > 94
				if $n < 3
					AddMonster (30201,1,$mapid,$x,$y,1,-1)
					BC( "screen", "player", -1, "A cute Fire Fox has just showed up!" )
				endif
			endif
		endif
		//???
		$ExistStatus2 = IsExistStatus(-1,11593)
		if $ExistStatus2 == 0
			if $level > 44
				if $level < 55
					if $n < 3
						AddMonster (30177,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Piggish Catty has just showed up!" )
					endif
				endif
			endif
			if $level > 54
				if $level < 65
					if $n < 3
						AddMonster (30182,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Piggish Catty has just showed up!" )
					endif
				endif
			endif
			if $level > 64
				if $level < 75
					if $n < 3
						AddMonster (30187,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Piggish Catty has just showed up!" )
					endif
				endif
			endif
			if $level > 74
				if $level < 85
					if $n < 3
						AddMonster (30192,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Piggish Catty has just showed up!" )
					endif
				endif
			endif
			if $level > 84
				if $level < 95
					if $n < 3
						AddMonster (30187,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Piggish Catty has just showed up!" )
					endif
				endif
			endif
			if $level > 94
				if $n < 3
					AddMonster (30202,1,$mapid,$x,$y,1,-1)
					BC( "screen", "player", -1, "A cute Piggish Catty has just showed up!" )
				endif
			endif
		endif
		//
		$ExistStatus3 = IsExistStatus(-1,11594)
		if $ExistStatus3 == 0
			if $level > 44
				if $level < 55
					if $n < 3
						AddMonster (30178,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 54
				if $level < 65
					if $n < 3
						AddMonster (30183,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 64
				if $level < 75
					if $n < 3
						AddMonster (30188,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 74
				if $level < 85
					if $n < 3
						AddMonster (30193,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 84
				if $level < 95
					if $n < 3
						AddMonster (30188,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 94
				if $n < 3
					AddMonster (30203,1,$mapid,$x,$y,1,-1)
					BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
				endif
			endif
		endif
		//???
		$ExistStatus3 = IsExistStatus(-1,11595)
		if $ExistStatus3 == 0
			if $level > 44
				if $level < 55
					if $n < 3
						AddMonster (30178,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 54
				if $level < 65
					if $n < 3
						AddMonster (30183,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 64
				if $level < 75
					if $n < 3
						AddMonster (30188,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 74
				if $level < 85
					if $n < 3
						AddMonster (30193,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 84
				if $level < 95
					if $n < 3
						AddMonster (30188,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
					endif
				endif
			endif
			if $level > 94
				if $n < 3
					AddMonster (30203,1,$mapid,$x,$y,1,-1)
					BC( "screen", "player", -1, "A scary Grandma Wolf has just showed up!" )
				endif
			endif
		endif
		//???
		$ExistStatus4 = IsExistStatus(-1,11596)
		if $ExistStatus4 == 0
			if $level > 44
				if $level < 55
					if $n < 3
						AddMonster (30179,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Grand White Bear has just showed up!" )
					endif
				endif
			endif
			if $level > 54
				if $level < 65
					if $n < 3
						AddMonster (30184,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Grand White Bear has just showed up!" )
					endif
				endif
			endif
			if $level > 64
				if $level < 75
					if $n < 3
						AddMonster (30189,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Grand White Bear has just showed up!" )
					endif
				endif
			endif
			if $level > 74
				if $level < 85
					if $n < 3
						AddMonster (30194,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Grand White Bear has just showed up!" )
					endif
				endif
			endif
			if $level > 84
				if $level < 95
					if $n < 3
						AddMonster (30189,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A cute Grand White Bear has just showed up!" )
					endif
				endif
			endif
			if $level > 94
				if $n < 3
					AddMonster (30204,1,$mapid,$x,$y,1,-1)
					BC( "screen", "player", -1, "A cute Grand White Bear has just showed up!" )
				endif
			endif
		endif
		//????
		$ExistStatus5 = IsExistStatus(-1,11597)
		if $ExistStatus5 == 0
			if $level > 44
				if $level < 55
					if $n < 3
						AddMonster (30180,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Monster Hunter has just showed up!" )
					endif
				endif
			endif
			if $level > 54
				if $level < 65
					if $n < 3
						AddMonster (30185,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Monster Hunter has just showed up!" )
					endif
				endif
			endif
			if $level > 64
				if $level < 75
					if $n < 3
						AddMonster (30190,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Monster Hunter has just showed up!" )
					endif
				endif
			endif
			if $level > 74
				if $level < 85
					if $n < 3
						AddMonster (30195,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Monster Hunter has just showed up!" )
					endif
				endif
			endif
			if $level > 84
				if $level < 95
					if $n < 3
						AddMonster (30200,1,$mapid,$x,$y,1,-1)
						BC( "screen", "player", -1, "A scary Monster Hunter has just showed up!" )
					endif
				endif
			endif
			if $level > 94
				if $n < 3
					AddMonster (30205,1,$mapid,$x,$y,1,-1)
					BC( "screen", "player", -1, "A scary Monster Hunter has just showed up!" )
				endif
			endif
		endif
		
	}
	