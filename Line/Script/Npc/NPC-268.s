	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/6
	//		Author:???
	//		TaskName:NPC-268.s
	//		TaskID:40?????????2
	//
	//****************************************
	
	function OnRequest(){
		
		$task = IsTaskAccept( -1,1365 )
		if $task != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif	
		
		$ditu = GetPlayerInfo( -1 , "item",12441)
		if $ditu > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$info = GetPlayerInfo( -1 , "item",4021)
		if $info < 40
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
		
		$info1 = GetPlayerInfo( -1 , "item",4021)
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		if $info1 < 40
		BC( "dialogbox", "player", -1, "You don't have 40 units of Linen. Go to Foraging Grounds to gather more." )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" ,4021,40 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item",12441, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
	}
	
	function OnOption1(){
		$result = IsExistStatus( -1, 11585 )
		if $result != 0
			BC( "dialogbox", "player", -1, "You are not one of us, human! Leave this sacred place at once!" )
			return
		endif
		
		BC( "dialogbox", "player", -1, "I'm making the proper clothing for people and I'm short material. If you can bring me {#ffff002a=40 units of Linen#}, I will thank you with a Aegean Treasure Map. ({#ffff002a=Go to the Foraging Grounds in Atlantis to gather Linen.#})" )
	}