        //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:??
	//		TaskName:GOD-Item-59130.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		//????????????????
		$result = HaveTitle( -1 , 21 )
		if $result != 0
		        BC( "screen", "player", -1, "You can only use [Soul Badge] after you've acquired the Demi-God title." )
			return
		endif
		
		$godvalue = GetGodValue( -1 )
		$godvaluemax = GetGodValueMax( -1 )
		if $godvalue >= $godvaluemax
			BC( "screen", "player", -1, "Your Deity is full. Can not use [Soul Badge]." )
			return
		endif
				
		//??????
		$nfo = SubPlayerInfo( -1 , "item" , 59130 , 1 )
		if $nfo != 0
			return
		endif
		
		//??????????3000?
		AddPlayerInfo(-1,"godvalue",3000)
			BC( "chat", "player", -1, "You have acquired 3,000 Deity." )
		
	}