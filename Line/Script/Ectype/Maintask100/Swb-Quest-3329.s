
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/11
	//		Author:???
	//		TaskName:Swb-Quest-3329.s
	//		TaskID:????
	//****************************************
	
	
	function OnTaskAccept(){
		
	}
	
	function OnTaskDone(){
		
		$info = GetPlayerInfo( -1 , "guildid" )
		if $info != 0
			AddPlayerInfo( -1 , "guildprosperity", 250 )
			AddPlayerInfo( -1 , "guildmoney", 7500 )
			AddPlayerInfo( -1 , "guildoffer", 5 )
		else
			BC( "screen" , "player" , -1 , "No rewards without entering guild" )
			BC( "chat" , "player" , -1 , "No rewards without entering guild" )
		endif
		$lv = GetPlayerInfo ( -1 , "level" )
//---(lv-30)^3*2+lv^2*12
		$lv1 = $lv * $lv
		$a = $lv - 30
		$b = $a * $a 
		$c = $b * $a
		$e = 2 * $c
		$d = $lv1 * 12
		
		$exp = $e + $d
		
		AddPlayerInfo( -1 , "exp" , $exp )
	}