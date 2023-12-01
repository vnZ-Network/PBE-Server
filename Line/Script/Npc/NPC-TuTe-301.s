 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/19
	//		Author:???
	//		TaskName:NPC-301.s
	//		TaskID:
	//****************************************
	
	
	function OnRequest(){
		
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			DisableNpcOption(0)
		endif
	//-----------------------------
		$task1 = IsTaskAccept( -1,1517 )
		$task3 = IsTaskDone( -1,1517 )
		if $task3 != 0
			if $task1 != 0
				DisableNpcOption(1)
			endif
		endif
		$task2 = IsTaskDone( -1,1516 )
		if $task2 != 0
			DisableNpcOption(1)
		endif
		

		
		
	//-----------------------------	
		$task4 = IsTaskAccept( -1,1521 )
		if $task4 != 0
			DisableNpcOption(2)
		endif
		$task5 = IsTaskDone( -1,1520 )
		if $task5 != 0
			DisableNpcOption(2)
		endif
		$task6 = IsTaskDone( -1,1521 )
		if $task6 == 0
			DisableNpcOption(2)
		endif
	//-----------------------------
		$title1 = HaveTitle( -1 , 33 )
		if $title1 == 0
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif
		
		$task7 = IsTaskDone( -1,1501 )
		if $task7 != 0
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif	
	
		$info1 = GetPlayerInfo( -1 , "item",12550)
		if $info1 > 0
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif
		$info2 = GetPlayerInfo( -1 , "item",6026)
		if $info2 < 5
			DisableNpcOption(3)
		else
			DisableNpcOption(4)
		endif 
	//-----------------------------
		if $task6 != 0
			DisableNpcOption(5)
		endif
	}
	
	
	function OnOption0(){
	
		$task = IsTaskAccept( -1, 791 )
		if $task != 0
			BC( "screen", "player", -1, "You haven't acquired the quest." )
			return
		endif
		
		$Info = GetPlayerInfo( -1, "money" )
		if $Info >= 1000
			$Sub0 = SubPlayerInfo( -1, "money", 1000 )
			if $Sub0 != 0
				return
			endif
			AddPlayerInfo( -1, "item", 12224, 1 )
			return
		else
			BC( "dialogbox", "player", -1, "You do not have 1000 coins!" )
			return
		endif
		
	}
	
	function OnOption1(){
		FlyToMap( -1, 209, 70,64 )
	}
	
	function OnOption2(){
		$a = GetPlayerInfo ( -1 , "item", 12566)
		if $a < 5
			BC( "dialogbox", "player", -1, "You need 5 Corruption Essences to enter Karnak Temple. Gather Corruption Essences from the Corrupting Grass in King's Gorge." )
			return
		endif
		$del1 = SubPlayerInfo( -1 , "item",12566,5 )
		if $del1 != 0
			return
		endif
		FlyToMap( -1, 209, 77,42 )
	}
	
	function OnOption3(){
		
		$info3 = GetPlayerInfo( -1 , "item",6026)
		$info4 = GetPlayerInfo( -1 , "item",12550)
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		$title = HaveTitle( -1 , 33 )
		
		if $title == 0
			return
		endif
		if $info4 > 0
			return
		endif
		if $info3 < 5
			BC( "dialogbox", "player", -1, "You need 5 units of Grapes!" )
			return
		endif
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" ,6026,5 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item",12550, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
	}
	
	function OnOption4(){
		
		BC( "dialogbox", "player", -1, "Lost your Proof of Valor? Fine. If you can find me 5 units of Grapes, I can give you another Proof of Valor. {#ffff002a=Merchant Kardanny in Atlantis sells grapes.#}" )
	}
	
	function OnOption5(){
		FlyToMap( -1, 209, 77,42 )
	}