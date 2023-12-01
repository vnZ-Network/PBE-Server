	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:???? 59796
	//		TaskID:
	//
	//****************************************


	function OnUseItem(){
	
			$level = GetPlayerInfo( -1 , "level" )
			$Now_Yday =  GetSystemTime( "yday" )
			$Now_Yday = $Now_Yday + 1
			$Now_Yday_1 = GetPlayerVar( -1, 3982 )
			$rund = GetPlayerVar( -1, 3274 )
			$rund = $rund + 1
			
			
			
		if $Now_Yday != $Now_Yday_1
			$result = SubPlayerInfo( -1 , "item" , 59796 , 1 )
			if $result != 0
				return
			endif
			
			if $level < 45
				$exp = $level * $level
				$exp = $exp * 120
				$a = $level * $level
				$a = $a * 400
				$exp = $exp + $a
				$exp = $exp / 2
				AddPlayerInfo( -1 , "exp" , $exp )
			else
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
			endif
			SetPlayerVar(-1,3274,1 )
			SetPlayerVar(-1,3982,$Now_Yday )
			$flevel = GetFieldLevel(-1)
			if $flevel > 0
//(lv^2+0.6*lv+1000)*30
				$a = $flevel * $flevel
				$a = $a * 30
				$b = $flevel * 18
				$c = $a + $b
				$exp = $c + 30000
				AddFieldExp(-1,$exp)
			endif
//			PlayEffect( -1 , "common\marry\quest\tx_quest_quanxin.ini" , 1 )
//			#name = GetPlayerInfo( -1 , "name" )
//			BC("screen" , "server" , -1 ,  "GUID:05323000000" , #name , "GUID:05323000001" )
//			BC("chat" , "server" , -1 ,  "GUID:05323000002" , #name , "GUID:05323000003" )
		else
			if $rund > 5
				BC( "screen", "player", -1, "This item can be used 5 times per day.")
				return
			else
				$result = SubPlayerInfo( -1 , "item" , 59796 , 1 )
				if $result != 0
					return
				endif
				if $level < 45
					$exp = $level * $level
					$exp = $exp * 120
					$a = $level * $level
					$a = $a * 400
					$exp = $exp + $a
					$exp = $exp / 2
					AddPlayerInfo( -1 , "exp" , $exp )
					BC( "screen", "player", -1, "Obtain EXP " , $exp )
				else
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
					BC( "screen", "player", -1, "Obtain EXP " , $exp )
				endif
				SetPlayerVar(-1,3274,$rund )
				$flevel = GetFieldLevel(-1)
				if $flevel > 0
	//(lv^2+0.6*lv+1000)*30
					$a = $flevel * $flevel
					$a = $a * 30
					$b = $flevel * 18
					$c = $a + $b
					$exp = $c + 30000
					AddFieldExp(-1,$exp)
				endif
				//#name = GetPlayerInfo( -1 , "name" )
				//BC("screen" , "server" , -1 ,  "GUID:05323000007" , #name , "GUID:05323000008" )
				//BC("chat" , "server" , -1 ,  "GUID:05323000009" , #name , "GUID:05323000010" )
				//PlayEffect( -1 , "common\marry\quest\tx_quest_quanxin.ini" , 1 )
			endif
		endif
	}