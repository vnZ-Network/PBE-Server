	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/6
	//		Author:???
	//		TaskName:NPC-57.s
	//		TaskID:30???????????5
	//
	//****************************************
	
	function OnRequest(){
		
		
		$task = IsTaskAccept( -1,1365 )
		if $task != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif	
		
		$ditu = GetPlayerInfo( -1 , "item",12444)
		if $ditu > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$info = GetPlayerInfo( -1 , "item",64002)
		if $info < 30
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
		
		$info1 = GetPlayerInfo( -1 , "item",64002)
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		if $info1 < 30
			BC( "dialogbox", "player", -1, "You don't have 30 Fine Jade Sculptures." )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" ,64002,30 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item",12444, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
	}
	
	function OnOption1(){
		$result = IsExistStatus( -1, 11585 )
		if $result != 0
			BC( "dialogbox", "player", -1, "You are not one of us, human! Leave this sacred place at once!" )
			return
		endif
		
		BC( "dialogbox", "player", -1, "I'm a princess. Whom should I fear? These days, I'm very interested in the Fine Jade Sculptures. They are beautiful, and I like them! I want them, and I want them now! Aegean Treasure Map? That fits a sweaty worker, not a princess as me. Take it if you want, after you can offer me {#ffff002a=30 Fine Jade Sculptures#}! ({#ffff002a=LV30 - LV40 monsters drop Fine Jade Sculptures.#}) " )
	}