	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/6
	//		Author:???
	//		TaskName:NPC-264.s
	//		TaskID:2?????????6
	//
	//****************************************
	
	function OnRequest(){
		
		$task = IsTaskAccept( -1,1365 )
		if $task != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif	
		
		$ditu = GetPlayerInfo( -1 , "item",12445)
		if $ditu > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		$info = GetPlayerInfo( -1 , "item",64103)
		if $info < 2
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
		
		$info1 = GetPlayerInfo( -1 , "item",64103)
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		
		
		if $info1 < 2
		BC( "dialogbox", "player", -1, "You need 2 Gold Bricks." )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" ,64103,2 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item",12445, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
	}
	
	
	
	function OnOption1(){
		$result = IsExistStatus( -1, 11585 )
		if $result != 0
			BC( "dialogbox", "player", -1, "You are not one of us, human! Leave this sacred place at once!" )
			return
		endif
		
		BC( "dialogbox", "player", -1, "Well, well, you don't say I'm greedy or something. I love gold, and I love nothing else. Bring me {#ffff002a=2 Gold Bricks#} or you won't even have the chance to have a peek on the Aegean Treasure Map. But if you find me the Gold Bricks, the treasure map will be yours, friend. ({#ffff002a=Use Midas Scroll to convert 10 Raw Jade into the Gold Brick.#}) " )
	}