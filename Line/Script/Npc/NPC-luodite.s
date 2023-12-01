	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/6
	//		Author:???
	//		TaskName:NPC-luodite.s
	//		TaskID:84 ????? 263
	//
	//****************************************
	
	function OnRequest(){
	
		$task0 = IsTaskAccept( -1, 84 )
		if $task0 == 1
			DisableNpcOption(0)
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 12132 )
		if $Item1 > 0
			DisableNpcOption(0)
		endif
	//----------------------------------------------
		$task = IsTaskAccept( -1,1365 )
		if $task != 0
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif	
		
		$ditu = GetPlayerInfo( -1 , "item",12446)
		if $ditu > 0
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		
		$info = GetPlayerInfo( -1 , "item",6042)
		if $info < 30
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
		endif 
		
	}
	
	
	function OnOption0(){
	
		$task0 = IsTaskAccept( -1, 84 )
		if $task0 == 1
			BC( "dialogbox", "player", -1, "You haven't taken the quest - Mermaids In Illusion." )
			return
		endif
		
		$status = IsExistStatus( -1, 11564 )
		if $status != 0
			BC( "dialogbox", "player", -1, "You are not one of us, human! I won't give you the Chromatic Seashell. Leave, and leave now! You won't like a raging Aegean!" )
			return
		endif
		
		$Item1 = GetPlayerInfo( -1, "item", 12132 )
		if $Item1 > 0
			BC( "dialogbox", "player", -1, "You already have the Chromatic Seashell." )
			return
		endif
		
		AddPlayerInfo( -1, "item", 12132, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
	}
	
	function OnOption1(){
		
		$result = IsExistStatus( -1, 11585 )
		if $result != 0
			BC( "dialogbox", "player", -1, "You are not one of us, human! Leave this sacred place at once!" )
			return
		endif
		
		$info1 = GetPlayerInfo( -1 , "item",6042)
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		if $info1 < 30
			BC( "dialogbox", "player", -1, "You need 30 cocos! Go to buy more from the general merchant if necessary." )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" ,6042,30 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item",12446, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
	}
	
	
	function OnOption2(){
		$result = IsExistStatus( -1, 11585 )
		if $result != 0
			BC( "dialogbox", "player", -1, "You are not one of us, human! Leave this sacred place at once!" )
			return
		endif
		
		BC( "dialogbox", "player", -1, "Have your ever tasted a coconut? They tell me that coconuts are delicious! But... they don't grow beneath the ocean. If you bring me {#ffff002a=30 Coconuts#}, I will give you an Aegean Treasure Map! {#ffff002a=You can buy Coco from Kardanny in Atlantis.#}" )
	}