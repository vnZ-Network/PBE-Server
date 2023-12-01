		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59232.s
	//		TaskID:???????
	//****************************************
 
	function OnUseItem(){
			
			$result = SubPlayerInfo( -1 , "item" , 59232 , 1 )
			if $result != 0
				return
			endif
			
			$level = GetPlayerInfo( -1 , "level" )
			if $level < 45
				$exp = $level * $level
				$exp = $exp * 10
				AddPlayerInfo( -1 , "exp" , $exp )
			else
				$exp = $level * $level
				$exp = $exp * 10
				$a = $level * 4
				$a = $a - 76
				$exp = $exp * $a
				$exp = $exp / 100
				AddPlayerInfo( -1 , "exp" , $exp )
			endif
		
			PlayEffect( -1 , "common\huodong\zhounianyanhua3\tx_zhounianyanhua3.m4f.ini" , 2 )
			//----------------????????????---------------------
			$time = GetPlayerVar( -1 , 3987 )
			$nowtime = GetSystemTime( "yday" )
			$nowtime = $nowtime + 1
			$round = GetPlayerVar( -1 , 71 )
			
			if $time != $nowtime
				#name = GetPlayerInfo( -1 , "name" )
				BC("screen" , "server" , -1 ,  "(",#name,") The fireworks light the beautiful sky above Atlantis. The gods are intoxicated with the spirit of Anniversary!" )
				BC("chat" , "server" , -1 ,  "(",#name,") The fireworks light the beautiful sky above Atlantis. The gods are intoxicated with the spirit of Anniversary!" )
				SetPlayerVar( -1 , 3987 , $nowtime )
			endif
	}