	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/16
	//		Author:???
	//		TaskName:NPC-Seerfo.s
	//		TaskID:???
	//
	//****************************************
	
	function OnRequest(){
	//???
	$level = GetPlayerInfo( -1 , "level")
	$Now_Week =  GetSystemTime( "week" )
	//-----------------------
	if $Now_Week == 1
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif
	if $Now_Week == 2
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif
	if $Now_Week == 4
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif
	if $Now_Week == 5
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif
	if $Now_Week == 6
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif
	
	//-------???????,????????,????????----------------
	//-------???,????????,??????????----------------
	$Iteminfo = GetPlayerInfo(-1,"item",12520)
	if $Iteminfo == 0
		DisableNpcOption(1)
	else
		DisableNpcOption(0)
	endif
	
	$Task = IsTaskAccept(-1,4433)
	if $Task == 0
		DisableNpcOption(0)
	else
		DisableNpcOption(1)
	endif
	
	if $level < 45
		DisableNpcOption(1)
		DisableNpcOption(0)
	endif
	
		
	}
	
	function OnOption0(){
		
		$time =  GetSystemTime( "yday" )
		$id = GetPlayerID()
		$headerID = GetTeamHeaderID(-1 )
		$size = GetTeamAreaSize( -1 )
		$level = GetPlayerInfo( -1 , "level")
		$count = GetTeamMemberCount(-1)
		$line = GetServerLineID()
		if $line != 1
			BC( "dialogbox", "player", -1, "Light of Devotion is available only in Realm 1." )
			return
		endif
		//---------??????-----------
		$n = RandomNumber ( 0, 5 )
		if $n == 0
			$status = 11592
		endif
		if $n == 1
			$status = 11593
		endif
		if $n == 2
			$status = 11594
		endif
		if $n == 3
			$status = 11595
		endif
		if $n == 4
			$status = 11596
		endif
		if $n == 5
			$status = 11597
		endif
		
		//--------????????-----------------
		if $count < 2
			BC( "dialogbox", "player", -1, "To acquire Light of Devotion, you must be the leader of a party, which consists of you and your apprentice(s)." )
			return
		endif
		//--------????????-----------------
		if $id != $headerID
			BC( "dialogbox", "player", -1, "To acquire Light of Devotion, you must be the leader of a party, which consists of you and your apprentice(s)." )
			return
		endif
		//---------????????------------
		if $size > 8
			BC( "dialogbox", "player", -1, "Please keep all party member stick together. Some party members are standing too far." )
			return
		endif
		//---------????ID-------------
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
		//---------???????????---------------
		if $Men1 != -1
			#name1 = GetPlayerVar($Men1,"name" )
			$lasttime1 = GetPlayerVar($Men1,3667 )
			if $id != $Men1
				if $lasttime1 == $time
					BC( "dialogbox", "player", -1, "Party member ",#name1," has already acquired the quest of today. This member cannot continue this quest now." )
					return
				endif
				$Rc1 = CheckRelation($id ,$Men1)
				if $Rc1 != 2
					BC( "dialogbox", "player", -1, "To acquire Light of Devotion, you must be the leader of a party, which consists of you and your apprentice(s)." )
					return
				endif
				$nullitem1 = GetPlayerInfo($Men1 ,"nullitem", 0 )
				if $nullitem1 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name1,"s bag is full. Please ask this member to clear the bag before acquiring the quest." )
					return
				endif
				
			endif
		endif
		
		if $Men2 != -1
			#name2 = GetPlayerInfo($Men2,"name" )
			$lasttime2 = GetPlayerVar($Men2,3667 )
			if $id != $Men2
				if $lasttime2 == $time
					BC( "dialogbox", "player", -1, "Party member ",#name2," has already acquired the quest of today. This member cannot continue this quest now." )
					return
				endif
				$Rc2 = CheckRelation($id ,$Men2)
				if $Rc2 != 2
					BC( "dialogbox", "player", -1, "To acquire Light of Devotion, you must be the leader of a party, which consists of you and your apprentice(s)." )
					return
				endif
				$nullitem2 = GetPlayerInfo($Men2 ,"nullitem", 0 )
				if $nullitem2 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name2,"s bag is full. Please ask this member to clear the bag before acquiring the quest." )
					return
				endif
			endif
		endif


		if $Men3 != -1
			#name3 = GetPlayerInfo($Men3,"name" )
			$lasttime3 = GetPlayerVar($Men3,3667 )
			if $id != $Men3
				if $lasttime3 == $time
					BC( "dialogbox", "player", -1, "Party member ",#name3," has already acquired the quest of today. This member cannot continue this quest now." )
					return
				endif
				$Rc3 = CheckRelation($id ,$Men3)
				if $Rc3 != 2
					BC( "dialogbox", "player", -1, "To acquire Light of Devotion, you must be the leader of a party, which consists of you and your apprentice(s)." )
					return
				endif
				$nullitem3 = GetPlayerInfo($Men3 ,"nullitem", 0 )
				if $nullitem3 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name3,"s bag is full. Please ask this member to clear the bag before acquiring the quest." )
					return
				endif
				
			endif
		endif
		
		if $Men4 != -1
			#name4 = GetPlayerInfo($Men4,"name" )
			$lasttime4 = GetPlayerVar($Men4,3667 )
			if $id != $Men4
				if $lasttime4 == $time
					BC( "dialogbox", "player", -1, "Party member ",#name4," has already acquired the quest of today. This member cannot continue this quest now." )
					return
				endif
				$Rc4 = CheckRelation($id ,$Men4)
				if $Rc4 != 2
					BC( "dialogbox", "player", -1, "To acquire Light of Devotion, you must be the leader of a party, which consists of you and your apprentice(s)." )
					return
				endif
				$nullitem4 = GetPlayerInfo($Men4 ,"nullitem", 0 )
				if $nullitem4 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name4,"s bag is full. Please ask this member to clear the bag before acquiring the quest." )
					return
				endif
				
			endif
		endif
		
		if $Men5 != -1
			#name5 = GetPlayerInfo($Men5,"name" )
			$lasttime5 = GetPlayerVar($Men5,3667 )
			if $id != $Men5
				if $lasttime5 == $time
					BC( "dialogbox", "player", -1, "Party member ",#name5," has already acquired the quest of today. This member cannot continue this quest now." )
					return
				endif
				$Rc5 = CheckRelation($id ,$Men5)
				if $Rc5 != 2
					BC( "dialogbox", "player", -1, "To acquire Light of Devotion, you must be the leader of a party, which consists of you and your apprentice(s)." )
					return
				endif
				$nullitem5 = GetPlayerInfo($Men5 ,"nullitem", 0 )
				if $nullitem5 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name5,"s bag is full. Please ask this member to clear the bag before acquiring the quest." )
					return
				endif
				
			endif
		endif
		
		if $Men6 != -1
			#name6 = GetPlayerInfo($Men6,"name" )
			$lasttime6 = GetPlayerVar($Men6,3667 )
			if $id != $Men6
				if $lasttime6 == $time
					BC( "dialogbox", "player", -1, "Party member ",#name6," has already acquired the quest of today. This member cannot continue this quest now." )
					return
				endif
				$Rc6 = CheckRelation($id ,$Men6)
				if $Rc6 != 2
					BC( "dialogbox", "player", -1, "To acquire Light of Devotion, you must be the leader of a party, which consists of you and your apprentice(s)." )
					return
				endif
			
				$nullitem6 = GetPlayerInfo($Men6 ,"nullitem", 0 )
				if $nullitem6 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name6,"s bag is full. Please ask this member to clear the bag before acquiring the quest." )
					return
				endif
			endif
		endif
		
		
		$nullitem = GetPlayerInfo(-1 ,"nullitem", 0 )
		if $nullitem == 0
			BC( "dialogbox", "player", -1, "You bag is full. Please clear you bag before your acquire the quest." )
			return
		endif
		$lasttime = GetPlayerVar(-1,3667 )
		if $lasttime == $time
			BC( "dialogbox", "player", -1, "You have finished the quest of today." )
			return
		endif
		
		//????-START
			$team_count = GetTeamMemberCount(-1)
			$TJ_join_number = GetGlobalVar(952)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(952 , $TJ_join_number)
		//????-END


//----------??????????-----------------
		if $Men1 != -1
			SubPlayerInfo($Men1 ,"item",12514,-1)
			SubPlayerInfo($Men1 ,"item",12515,-1)
			SubPlayerInfo($Men1 ,"item",12516,-1)
			SubPlayerInfo($Men1 ,"item",12517,-1)
			SubPlayerInfo($Men1 ,"item",12518,-1)
			SubPlayerInfo($Men1 ,"item",12519,-1)
			AcceptTask($Men1,4433)
			AddStatus($Men1,$status,1)
			SetPlayerVar($Men1,3667,$time)
			BC( "dialogbox", "player", $Men1, "Thank you for participating in the Light of Devotion event. Check the event item in your Bag!" )
		endif
		if $Men2 != -1
			SubPlayerInfo($Men2 ,"item",12514,-1)
			SubPlayerInfo($Men2 ,"item",12515,-1)
			SubPlayerInfo($Men2 ,"item",12516,-1)
			SubPlayerInfo($Men2 ,"item",12517,-1)
			SubPlayerInfo($Men2 ,"item",12518,-1)
			SubPlayerInfo($Men2 ,"item",12519,-1)
			AcceptTask($Men2,4433)
			AddStatus($Men2,$status,1)
			SetPlayerVar($Men2,3667,$time)
			BC( "dialogbox", "player", $Men2, "Thank you for participating in the Light of Devotion event. Check the event item in your Bag!" )
		endif
		if $Men3 != -1
			SubPlayerInfo($Men3 ,"item",12514,-1)
			SubPlayerInfo($Men3 ,"item",12515,-1)
			SubPlayerInfo($Men3 ,"item",12516,-1)
			SubPlayerInfo($Men3 ,"item",12517,-1)
			SubPlayerInfo($Men3 ,"item",12518,-1)
			SubPlayerInfo($Men3 ,"item",12519,-1)
			AcceptTask($Men3,4433)
			AddStatus($Men3,$status,1)
			SetPlayerVar($Men3,3667,$time)
			BC( "dialogbox", "player", $Men3, "Thank you for participating in the Light of Devotion event. Check the event item in your Bag!" )
		endif
		if $Men4 != -1
			SubPlayerInfo($Men4 ,"item",12514,-1)
			SubPlayerInfo($Men4 ,"item",12515,-1)
			SubPlayerInfo($Men4 ,"item",12516,-1)
			SubPlayerInfo($Men4 ,"item",12517,-1)
			SubPlayerInfo($Men4 ,"item",12518,-1)
			SubPlayerInfo($Men4 ,"item",12519,-1)
			AcceptTask($Men4,4433)
			AddStatus($Men4,$status,1)
			SetPlayerVar($Men4,3667,$time)
			BC( "dialogbox", "player", $Men4, "Thank you for participating in the Light of Devotion event. Check the event item in your Bag!" )
		endif
		if $Men5 != -1
			SubPlayerInfo($Men5 ,"item",12514,-1)
			SubPlayerInfo($Men5 ,"item",12515,-1)
			SubPlayerInfo($Men5 ,"item",12516,-1)
			SubPlayerInfo($Men5 ,"item",12517,-1)
			SubPlayerInfo($Men5 ,"item",12518,-1)
			SubPlayerInfo($Men5 ,"item",12519,-1)
			AcceptTask($Men5,4433)
			AddStatus($Men5,$status,1)
			SetPlayerVar($Men5,3667,$time)
			BC( "dialogbox", "player", $Men5, "Thank you for participating in the Light of Devotion event. Check the event item in your Bag!" )
		endif
		if $Men6 != -1
			SubPlayerInfo($Men6 ,"item",12514,-1)
			SubPlayerInfo($Men6 ,"item",12515,-1)
			SubPlayerInfo($Men6 ,"item",12516,-1)
			SubPlayerInfo($Men6 ,"item",12517,-1)
			SubPlayerInfo($Men6 ,"item",12518,-1)
			SubPlayerInfo($Men6 ,"item",12519,-1)
			AcceptTask($Men6,4433)
			AddStatus($Men6,$status,1)
			SetPlayerVar($Men6,3667,$time)
			BC( "dialogbox", "player", $Men6, "Thank you for participating in the Light of Devotion event. Check the event item in your Bag!" )
		endif	
	}



	function OnOption1(){
		$line = GetServerLineID()
		if $line != 1
			BC( "dialogbox", "player", -1, "Light of Devotion is available only in Realm 1." )
			return
		endif
		$time =  GetSystemTime( "yday" )
		$id = GetPlayerID()
		$headerID = GetTeamHeaderID(-1 )
		$count = GetTeamMemberCount(-1)
		//---------????ID-------------
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
		//------------------------
		$size = GetTeamAreaSize( -1 )
		//------------------------
		$level = GetPlayerInfo( -1 , "level")
		//-----????-------------------
		$a = $level * $level
		$b = $a * 9
		$c = $level - 19
		$j = $count * 4
		$d = $j + 100
		$e = $b * $c
		$f = $e * $d
		$h = $f / 100
		
		//--------????????-----------------
		if $id != $headerID
			BC( "dialogbox", "player", -1, "To finish Light of Devotion, you must be the leader a party, which consists of you and your apprentice(s)." )
			return
		endif
		$nullitem = GetPlayerInfo(-1 ,"nullitem", 0 )
		if $nullitem < 2
			BC( "dialogbox", "player", -1, "You do not have 2 free spaces in your bag, please clear space first to get the quest items!" )
			return
		endif
		//---------???????----??-------------
		if $size > 8
			BC( "dialogbox", "player", -1, "All party members please stick together." )
			return
		endif
		//---------????????,??????----??-------------
		if $Men1 != -1
		
			#name1 = GetPlayerInfo($Men1,"name" )
			if $id != $Men1
				$task1 = IsTaskAccept($Men1,4433)
				if $task1 != 0
					BC( "dialogbox", "player", -1, "Your party member ",#name1,"Quest not acquired." )
					return
				endif
				$nullitem11 = GetPlayerInfo($Men1 ,"nullitem", 0 )
				if $nullitem11 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name1,"s bag is full. Please ask this member to clear the bag before acquiring the reward.." )
					return
				endif
				$Relation1 = CheckRelation($id ,$Men1)
				if $Relation1 != 2
					BC( "dialogbox", "player", -1, "To finish Light of Devotion, you must be the leader a party, which consists of you and your apprentice(s)." )
					return
				endif
				$item1 = GetPlayerInfo($Men1,"item",12520)
				if $item1 < 1
					BC( "dialogbox", "player", -1, "Party member ",#name1," has not finished the quest. Please let ",#name1," leave the party or help her/him to finish the quest before you go for the reward." )
					return
				endif
			endif	
		endif
		
		if $Men2 != -1
			#name2 = GetPlayerInfo($Men2,"name" )
			if $id != $Men2
				$task2 = IsTaskAccept($Men2,4433)
				if $task2 != 0
					BC( "dialogbox", "player", -1, "Your party member ",#name2,"Quest not acquired." )
					return
				endif
				$nullitem22 = GetPlayerInfo($Men2 ,"nullitem", 0 )
				if $nullitem22 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name2,"s bag is full. Please ask this member to clear the bag before acquiring the reward.." )
					return
				endif
				$Relation2 = CheckRelation($id ,$Men2)
				if $Relation2  != 2
					BC( "dialogbox", "player", -1, "To finish Light of Devotion, you must be the leader a party, which consists of you and your apprentice(s)." )
					return
				endif
				$item2 = GetPlayerInfo($Men2,"item",12520)
				if $item2 < 1
					BC( "dialogbox", "player", -1, "Party member ",#name2,"Please let ",#name2," leave the party or help her/him to finish the quest before you go for the reward." )
					return
				endif
			endif
		endif
		if $Men3 != -1
			#name3 = GetPlayerInfo($Men3,"name" )
			if $id != $Men3
				$task3 = IsTaskAccept($Men3,4433)
				if $task3 != 0
					BC( "dialogbox", "player", -1, "Your party member ",#name3,"Quest not acquired." )
					return
				endif
				$nullitem33 = GetPlayerInfo($Men3 ,"nullitem", 0 )
				if $nullitem33 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name3,"s bag is full. Please ask this member to clear the bag before acquiring the reward.." )
					return
				endif
				$Relation3 = CheckRelation($id ,$Men3)
				if $Relation3 != 2
					BC( "dialogbox", "player", -1, "To finish Light of Devotion, you must be the leader a party, which consists of you and your apprentice(s)." )
					return
				endif
				$item3 = GetPlayerInfo($Men3,"item",12520)
				if $item3 < 1
					BC( "dialogbox", "player", -1, "Party member ",#name3,"Please let ",#name3," leave the party or help her/him to finish the quest before you go for the reward." )
					return
				endif
			endif
		endif
		if $Men4 != -1
			#name4 = GetPlayerInfo($Men4,"name" )
			if $id != $Men4
				$task4 = IsTaskAccept($Men4,4433)
				if $task4 != 0
					BC( "dialogbox", "player", -1, "Your party member ",#name4,"Quest not acquired." )
					return
				endif
				$nullitem44 = GetPlayerInfo($Men4 ,"nullitem", 0 )
				if $nullitem44 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name4,"s bag is full. Please ask this member to clear the bag before acquiring the reward.." )
					return
				endif
				$Relation4 = CheckRelation($id ,$Men4)
				if $Relation4 != 2
					BC( "dialogbox", "player", -1, "To finish Light of Devotion, you must be the leader a party, which consists of you and your apprentice(s)." )
					return
				endif
				$item4 = GetPlayerInfo($Men4,"item",12520)
				if $item4 < 1
					BC( "dialogbox", "player", -1, "Party member ",#name4,"Please let party member ",#name4," or help her/him to finish the quest before you go for the reward." )
					return
				endif
			endif
		endif
		
		if $Men5 != -1
			#name5 = GetPlayerInfo($Men5,"name" )
			if $id != $Men5
				$task5 = IsTaskAccept($Men5,4433)
				if $task5 != 0
					BC( "dialogbox", "player", -1, "Your party member ",#name5,"Quest not acquired." )
					return
				endif
				$nullitem55 = GetPlayerInfo($Men5 ,"nullitem", 0 )
				if $nullitem55 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name5,"s bag is full. Please ask this member to clear the bag before acquiring the reward.." )
					return
				endif
				$Relation5 = CheckRelation($id ,$Men5)
				if $Relation5 != 2
					BC( "dialogbox", "player", -1, "To finish Light of Devotion, you must be the leader a party, which consists of you and your apprentice(s)." )
					return
				endif
				$item5 = GetPlayerInfo($Men5,"item",12520)
				if $item5 < 1
					BC( "dialogbox", "player", -1, "Party member ",#name5,"Please let ",#name5," leave the party or help her/him to finish the quest before you go for the reward." )
					return
				endif
			endif
		endif
		
		if $Men6 != -1
			#name6 = GetPlayerInfo($Men6,"name" )
			if $id != $Men6
				$task6 = IsTaskAccept($Men6,4433)
				if $task6 != 0
					BC( "dialogbox", "player", -1, "Your party member ",#name6,"Quest not acquired." )
					return
				endif
				$nullitem66 = GetPlayerInfo($Men6 ,"nullitem", 0 )
				if $nullitem66 == 0
					BC( "dialogbox", "player", -1, "Your party member ",#name6,"s bag is full. Please ask this member to clear the bag before acquiring the reward.." )
					return
				endif
				$Relation6 = CheckRelation($id ,$Men6)
				if $Relation6 != 2
					BC( "dialogbox", "player", -1, "To finish Light of Devotion, you must be the leader a party, which consists of you and your apprentice(s)." )
					return
				endif
				$item6 = GetPlayerInfo($Men6,"item",12520)
				if $item6 < 1
					BC( "dialogbox", "player", -1, "Party member ",#name6,"Please let ",#name6," leave the party or help her/him to finish the quest before you go for the reward." )
					return
				endif
			endif
		endif
		$task11 = IsTaskAccept($Men6,4433)
		if $task11 != 0
			BC( "dialogbox", "player", -1, "You haven't acquired the quest." )
			return
		endif
		$item = GetPlayerInfo(-1,"item",12520)
		if $item < 1
			BC( "dialogbox", "player", -1, "You haven't finished the quest. You have the finish the quest before you acquire the reward." )
			return
		endif
		//---------????,?????,????????(???????????,??????????,????)---??----------
		$nullitem100 = GetPlayerInfo(-1 ,"nullitem", 0 )
		if $nullitem100 == 0
			BC( "dialogbox", "player", -1, "You bag is full. Please clear you bag before you acquire the reward." )
			return
		endif
		$count = GetTeamMemberCount(-1)
		$lastcount = $count - 1
		if $Men1 != -1
			SetTaskDone($Men1,4433)
			if $id != $Men1
				$level1 = GetPlayerInfo( $Men1 , "level")
				//-----????-??45------------------
				$a1 = $level1 * $level1
				$b1 = $a1 * 2475
				$c1 = $b1 / 10
				//-----????-??45------------------
				$a2 = $level1 * $level1
				$b2 = $a2 * 99
				$c2 = $level1 - 19
				$d2 = $b2 * $c2
				$e2 = $d2 / 10
				//-----------------------
				$Rela1 = CheckRelation($id ,$Men1)
				if $Rela1 == 2
					if $level1 < 45
						AddPlayerInfo($Men1,"exp",$c1)
					else
						AddPlayerInfo($Men1,"exp",$e2)
					endif
				endif	
			endif
			BC( "dialogbox", "player",$Men1, "You have acquired lots of event rewards!" )
		endif
		
		if $Men2 != -1
			SetTaskDone($Men2,4433)
			if $id != $Men2
				$level2 = GetPlayerInfo( $Men2 , "level")
				//-----????-??45------------------
				$a11 = $level2 * $level2
				$b11 = $a11 * 2475
				$c11 = $b11 / 10
				//-----????-??45------------------
				$a21 = $level2 * $level2
				$b21 = $a21 * 99
				$c21 = $level2 - 19
				$d21 = $b21 * $c21
				$e21 = $d21 / 10
				//-----------------------
				$Rela2 = CheckRelation($id ,$Men2)
				if $Rela2 == 2
					if $level2 < 45
						AddPlayerInfo($Men2,"exp",$c11)
					else
						AddPlayerInfo($Men2,"exp",$e21)
					endif
				endif	
			endif
			BC( "dialogbox", "player",$Men2, "You have acquired lots of event rewards!" )	
		endif
		if $Men3 != -1
			SetTaskDone($Men3,4433)
			if $id != $Men3
				$level3 = GetPlayerInfo( $Men3 , "level")
				//-----????-??45------------------
				$a12 = $level3 * $level3
				$b12 = $a12 * 2475
				$c12 = $b12 / 10
				//-----????-??45------------------
				$a22 = $level3 * $level3
				$b22 = $a22 * 99
				$c22 = $level3 - 19
				$d22 = $b22 * $c22
				$e22 = $d22 / 10
				//-----------------------
				$Rela3 = CheckRelation($id ,$Men3)
				if $Rela3 == 2
					if $level3 < 45
						AddPlayerInfo($Men3,"exp",$c12)
					else
						AddPlayerInfo($Men3,"exp",$e22)
					endif
				endif	
			endif
			BC( "dialogbox", "player",$Men3, "You have acquired lots of event rewards!" )
		endif
		if $Men4 != -1
			SetTaskDone($Men4,4433)
			if $id != $Men4
				$level4 = GetPlayerInfo( $Men4 , "level")
				//-----????-??45------------------
				$a13 = $level4 * $level4
				$b13 = $a13 * 2475
				$c13 = $b13 / 10
				//-----????-??45------------------
				$a23 = $level4 * $level4
				$b23 = $a23 * 99
				$c23 = $level4 - 19
				$d23 = $b23 * $c23
				$e23 = $d23 / 10
				//-----------------------
				$Rela4 = CheckRelation($id ,$Men4)
				if $Rela4 == 2
					if $level4 < 45
						AddPlayerInfo($Men4,"exp",$c13)
					else
						AddPlayerInfo($Men4,"exp",$e23)
					endif
				endif	
			endif
			BC( "dialogbox", "player",$Men4, "You have acquired lots of event rewards!" )	
		endif
		if $Men5 != -1
			SetTaskDone($Men5,4433)
			if $id != $Men5
				$level5 = GetPlayerInfo( $Men5 , "level")
				//-----????-??45------------------
				$a14 = $level5 * $level5
				$b14 = $a14 * 2475
				$c14 = $b14 / 10
				//-----????-??45------------------
				$a24 = $level5 * $level5
				$b24 = $a24 * 99
				$c24 = $level5 - 19
				$d24 = $b24 * $c24
				$e24 = $d24 / 10
				//-----------------------
				$Rela5 = CheckRelation($id ,$Men5)
				if $Rela5 == 2
					if $level5 < 45
						AddPlayerInfo($Men5,"exp",$c14)
					else
						AddPlayerInfo($Men5,"exp",$e24)
					endif
				endif	
			endif
			BC( "dialogbox", "player",$Men5, "You have acquired lots of event rewards!" )
		endif
		if $Men6 != -1
			SetTaskDone($Men6,4433)
			if $id != $Men6
				$level6 = GetPlayerInfo( $Men6 , "level")
				//-----????-??45------------------
				$a15 = $level6 * $level6
				$b15 = $a15 * 2475
				$c15 = $b15 / 10
				//-----????-??45------------------
				$a25 = $level6 * $level6
				$b25 = $a25 * 99
				$c25 = $level6 - 19
				$d25 = $b25 * $c25
				$e25 = $d25 / 10
				//-----------------------
				$Rela6 = CheckRelation($id ,$Men6)
				if $Rela6 == 2
					if $level6 < 45
						AddPlayerInfo($Men6,"exp",$c15)
					else
						AddPlayerInfo($Men6,"exp",$e25)
					endif
				endif	
			endif
			BC( "screen", "player",$Men6, "You have acquired lots of event rewards! The more disciples a master tutors, the more rewards the master receives." )	
		endif	
		//---------?????----------
		
		if $lastcount == 1
			AddPlayerInfo(-1,"item",63213,30)
		endif
		if $lastcount == 2
			AddPlayerInfo(-1,"item",63213,35)
		endif
		if $lastcount == 3
			AddPlayerInfo(-1,"item",63213,40)
		endif
		if $lastcount == 4
			AddPlayerInfo(-1,"item",63213,45)
		endif
		if $lastcount == 5
			AddPlayerInfo(-1,"item",63213,50)
		endif
		SetTaskDone(-1,4433)
		AddPlayerInfo(-1 ,"exp",$h)
		AddPlayerInfo(-1 ,"item",60095,10)
		AddPlayerInfo(-1 ,"item",9,3)
		PlayEffect( -1, "common\Yanhua\tx_zhenbang2\tx_zhenbang2.ini" )
	}
	
	
	
	function OnOption2(){
		$ItemID1 = 63213
		$ItemID2 = 4534
		
		$Item01 = GetPlayerInfo( -1, "item", $ItemID1 )
		if $Item01 < 5
			BC( "dialogbox", "player", -1, "You don't have 5 Tutorship Rime." )
			return
		endif
		
		$count01 = GetPlayerInfo( -1, "nullitem", 1 )
		if $count01 < 1
			BC( "dialogbox", "player", -1, "You need 1 empty slot in your material bag." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID1, 5 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", $ItemID2, 5 )
	}
	
	function OnOption3(){
		$ItemID1 = 63213
		$ItemID2 = 4534
		
		$Item01 = GetPlayerInfo( -1, "item", $ItemID1 )
		if $Item01 < 20
			BC( "dialogbox", "player", -1, "You don't have 20 Tutorship Rime." )
			return
		endif
		
		$count01 = GetPlayerInfo( -1, "nullitem", 1 )
		if $count01 < 1
			BC( "dialogbox", "player", -1, "You need 1 empty slot in your material bag." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", $ItemID1, 20 )
		if $SubItem != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", $ItemID2, 20 )
	}