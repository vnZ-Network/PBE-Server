		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59295.s
	//		TaskID:????
	//****************************************
 
	function OnUseItem(){
	
			$level = GetPlayerInfo( -1 , "level" )
			$Now_Yday =  GetSystemTime( "yday" )
			$Now_Yday = $Now_Yday + 1
			$Now_Yday_1 = GetPlayerVar( -1, 3988 )
			//$rund = GetPlayerVar( -1, 3274 )
			//$rund = $rund + 1
			
			
			
		if $Now_Yday != $Now_Yday_1
			$result = SubPlayerInfo( -1 , "item" , 59295 , 1 )
			if $result != 0
				return
			endif
			
			if $level < 45
				//---------??1----------
				$exp = $level * $level
				$exp = $exp * 120
				$a = $level * $level
				$a = $a * 400
				$exp = $exp + $a
				//$exp = $exp / 2
				//---------??1-----------
				//---------??2-----------
				$exp1 = $level * $level
				$exp1 = $exp1 * 10
				$exp1 = $exp1 * 5
				//---------??2------------
				//??????-------
				$exp_final = $exp + $exp1
				
				//??????????60%
				$exp_final = $exp_final / 10
				$exp_final = $exp_final * 6
				
				AddPlayerInfo( -1 , "exp" , $exp_final )
			else
				//-----------??1-------------
				$exp = $level * 4
				$exp = $exp - 76
				$exp = $exp * 6
				$exp = $exp * $level
				$exp = $exp * $level
				$exp = $exp / 5
				$a = $level * $level
				$a = $a * 400
				$exp = $exp + $a
				//$exp = $exp / 2
				//-----------??1-------------
				//----------??2---------------
				$exp1 = $level * $level
				$exp1 = $exp1 * 10
				$a = $level * 4
				$a = $a - 76
				$exp1 = $exp1 * $a
				$exp1 = $exp1 / 100
				$exp1 = $exp1 * 5
				//----------??2---------------
				//??????-------
				$exp_final = $exp + $exp1
				
				//??????????60%
				$exp_final = $exp_final / 10
				$exp_final = $exp_final * 6
				
				AddPlayerInfo( -1 , "exp" , $exp_final )
			endif
			//SetPlayerVar(-1,3274,1 )
			SetPlayerVar(-1,3988,$Now_Yday )
			PlayEffect( -1 , "common\marry\quest\tx_quest_quanxin.ini" , 1 )
			#name = GetPlayerInfo( -1 , "name" )
			BC("screen" , "server" , -1 ,  "Milla blesses everyone." , #name , "Use the Emeraldshine Heart get a lot of EXP" )
			BC("chat" , "server" , -1 ,  "Milla blesses everyone." , #name , "Use the Emeraldshine Heart get a lot of EXP" )
		else
			BC( "screen", "player", -1, "Emeraldshine Heart can only be used once a day.")
		endif
	}