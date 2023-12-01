	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/04/08
	//		Author:??
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	
	function OnTaskAccept(){
		$a = GetPlayerBattleWin(-1)
		$b = GetPlayerBattleLose(-1)
		
		SetPlayerVar( -1 , 3983 , $a )
		SetPlayerVar( -1 , 3984 , $b )
		
	}
	
	function OnTaskDone(){
		$win = GetPlayerBattleWin(-1)
		$lose = GetPlayerBattleLose(-1)
		$win1 = GetPlayerVar( -1 , 3983 )
		$lose1 = GetPlayerVar( -1 , 3984 )
		$level = GetPlayerInfo( -1 , "level" )
		$id = GetPlayerID()
		#name = GetPlayerInfo( -1 , "name" )
		
		if $win != $win1
			$exp = $level * 4
			$exp = $exp - 76
			$exp = $exp * 6
			$exp = $exp * $level
			$exp = $exp * $level
			$exp = $exp / 5
			$a = $level * $level
			$a = $a * 400
			$exp = $exp + $a
			$exp = $exp / 2
			AddPlayerInfo( -1 , "exp" , $exp )
			AddPlayerBattleScore( $id , 1500 )
			BC( "screen", "server", -1, "N/A????:",#name,"You've received ", $exp ,"EXP and 1500 Glory!")
			//????-START
			$TJ_join_number = GetGlobalVar(976)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(976 , $TJ_join_number)	
		endif
		
		if $win == $win1
			if $lose != $lose1
				$exp = $level * 4
				$exp = $exp - 76
				$exp = $exp * 6
				$exp = $exp * $level
				$exp = $exp * $level
				$exp = $exp / 5
				$a = $level * $level
				$a = $a * 400
				$exp = $exp + $a
				$exp = $exp / 5				
				AddPlayerInfo( -1 , "exp" , $exp )
				AddPlayerBattleScore( $id , 500 )
				BC( "screen", "server", -1, "N/A????:",#name,"You've received ", $exp ,"EXP and 500 Glory!")
				//????-START
				$TJ_join_number = GetGlobalVar(976)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(976 , $TJ_join_number)				
			endif
		endif
	}			
			
	