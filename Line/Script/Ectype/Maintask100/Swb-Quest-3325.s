
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/3/11
	//		Author��˾�Ĳ�
	//		TaskName��Swb-Quest-3325.s
	//		TaskID����������
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