    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/13
	//		Author:??
	//		TaskName:HD-jinzita-M-10826.s
	//		TaskID:???.BOSS??????????
	//
	//****************************************
	
	
	
	function OnDead(){
		
		//?????ID
		$team_head_id =	GetTeamHeaderID (-1)
		//???????
		#player_name = GetPlayerInfo( $team_head_id, "name" )
		//???BOSS??
		SetServerVar(46 , 1)
		//????BOSS???
		
			DropMonsterItems(-1, 90200)	
		
		BC( "chat", "server", -1, "The hero ",#player_name," led a party to kill Prince Arbyss. The Maze of Mystery Trap and the Seal to the Palace of Osiris has been removed." )
		BC( "screen", "server", -1, "The hero ",#player_name," led a party to kill Prince Arbyss. The Maze of Mystery Trap and the Seal to the Palace of Osiris has been removed."  )
		
		$a = GetServerVar(44)
		$b = GetServerVar(45)
		$c = GetServerVar(46)
		$d = GetServerVar(47)
		if $a == 0
			return
		endif
		if $b == 0
			return
		endif
		if $c == 0
			return
		endif
		if $d == 0
			return
		endif
		BC( "chat", "server", -1, "The Seal on the Palace of Osiris has been removed. The fallen god awaits challengers." )
		BC( "screen", "server", -1, "The Seal on the Palace of Osiris has been removed. The fallen god awaits challengers."  )
		
	}	