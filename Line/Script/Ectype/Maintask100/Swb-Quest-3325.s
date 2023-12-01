
	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/3/11
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºSwb-Quest-3325.s
	//		TaskID£º±ù·âÍõ×ù
	//****************************************
	
	
	function OnTaskAccept(){
		
	}
	
	function OnTaskDone(){
		
		$info = GetPlayerInfo( -1 , "guildid" )
		if $info != 0
			AddPlayerInfo( -1 , "guildprosperity", 250 )
			AddPlayerInfo( -1 , "guildmoney", 7500 )
			AddPlayerInfo( -1 , "guildoffer", 5 )
		endif

	}