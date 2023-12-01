	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/6
	//		Author:???
	//		TaskName:NPC-267.s
	//		TaskID:25?????????4
	//
	//****************************************
	
	function OnRequest(){
		
		$task = IsTaskAccept( -1,1365 )
		if $task != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif	
		
		$ditu = GetPlayerInfo( -1 , "item",12443)
		if $ditu > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$info = GetPlayerInfo( -1 , "item",6020)
		if $info < 25
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif 	
	}
	
	
	
	
	function OnOption0(){
		
		$result = IsExistStatus( -1, 11585 )
		if $result != 0
			BC( "dialogbox", "player", -1, "You are not one of us, human! Leave this sacred place at once!" )
			return
		endif
		
		$info1 = GetPlayerInfo( -1 , "item",6020)
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		if $info1 < 25
		BC( "dialogbox", "player", -1, "You don't have 25 units of Kebab. Go to the general merchant's to buy Kebab." )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" ,6020,25 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item",12443, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
	}
	
	function OnOption1(){
		$result = IsExistStatus( -1, 11585 )
		if $result != 0
			BC( "dialogbox", "player", -1, "You are not one of us, human! Leave this sacred place at once!" )
			return
		endif
		
		BC( "dialogbox", "player", -1, "Ah! I am hungry! If you bring me {#ffff002a=25 strips of Kebab#}, I will give you an Aegean Treasure Map! {#ffff002a=You can buy Kebab from Kardanny in Atlantis.#}" )
	}