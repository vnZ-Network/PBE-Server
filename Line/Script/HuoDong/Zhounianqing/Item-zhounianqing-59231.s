		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59231.s
	//		TaskID:????
	//****************************************
 
	function OnUseItem(){
	
			$level = GetPlayerInfo( -1 , "level" )
			$Now_Yday =  GetSystemTime( "yday" )
			$Now_Yday = $Now_Yday + 1
			$Now_Yday_1 = GetPlayerVar( -1, 3982 )
			$rund = GetPlayerVar( -1, 3274 )
			$rund = $rund + 1
			
			
			
		if $Now_Yday != $Now_Yday_1
			$result = SubPlayerInfo( -1 , "item" , 59231 , 1 )
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
			PlayEffect( -1 , "common\marry\quest\tx_quest_quanxin.ini" , 1 )
			#name = GetPlayerInfo( -1 , "name" )
			BC("screen" , "server" , -1 ,  "The Holy Angel's kiss will bring you luck! The hero " , #name , " has received an Angel's Kiss and obtained experience." )
			BC("chat" , "server" , -1 ,  "The Holy Angel's kiss will bring you luck! The hero " , #name , " has received an Angel's Kiss and obtained experience." )
		else
			if $rund > 10
				BC( "screen", "player", -1, "You can use this item 10 times a day at the most.")
				return
			else
				$result = SubPlayerInfo( -1 , "item" , 59231 , 1 )
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
				SetPlayerVar(-1,3274,$rund )
				//#name = GetPlayerInfo( -1 , "name" )
				//BC("screen" , "server" , -1 ,  "The Holy Angel's kiss will bring you luck! The hero " , #name , " has received an Angel's Kiss and obtained experience." )
				//BC("chat" , "server" , -1 ,  "The Holy Angel's kiss will bring you luck! The hero " , #name , " has received an Angel's Kiss and obtained experience." )
				PlayEffect( -1 , "common\marry\quest\tx_quest_quanxin.ini" , 1 )
			endif
		endif
	}