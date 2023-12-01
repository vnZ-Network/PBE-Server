	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:NPC-202.s
	//		TaskID:10?????????????
	//
	//****************************************
	
	function OnRequest(){
		
		$task = IsTaskAccept( -1,1365 )
		if $task != 0
			DisableNpcOption(0)
		endif	
	}
	function OnOption0(){
		$info = GetPlayerInfo( -1 , "item",64003)
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		if $info < 20
		BC( "dialogbox", "player", -1, "You need 10 Raw Jade." )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" , 64003 , 10 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item",6363, 1 )
	}