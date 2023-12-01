	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/23
	//		Author:??
	//		TaskName:NPC-duihuanshengwang.s
	//		TaskID:1757 ??????????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	//??
	function OnOption0(){
	
		$count = GetPlayerInfo(-1, "item" ,12244)
		if $count == 0
			BC("dialogbox" ,"player" ,-1 ,"You don't have a Knight Medal with you.")
			return
		endif
		$revalue = SubPlayerInfo(-1 , "item" , 12244 , 1)
		if $revalue == 0 
			AddPlayerInfo(-1 , "prestige" , 7 , 5)
		endif
	
	}
	
	
	function OnOption1(){
	
		$count = GetPlayerInfo(-1, "item" ,12244)
		if $count < 10
			BC("dialogbox" ,"player" ,-1 ,"You don't have 10 Knight Medals with you.")
			return
		endif
		$revalue = SubPlayerInfo(-1 , "item" , 12244 , 10)
		if $revalue == 0 
			AddPlayerInfo(-1 , "prestige" , 7 , 50)
		endif
		
	
	}