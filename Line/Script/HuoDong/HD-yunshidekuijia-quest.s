	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/18
	//		Author:??
	//		TaskName:HD-yunshidekuijia-quest.s
	//		TaskID:???????????
	//
	//****************************************
	
	
	function OnTaskDone(){
		//??
		$today_time = GetSystemTime( "yday" )
		$time_hour = GetSystemTime( "hour" )
		
		//????????????
		$player_days =  GetPlayerVar( -1, 3621 )
		$player_time =  GetPlayerVar( -1, 3622 )
		$level = GetPlayerInfo( -1, "level" )
		//????????????,?????????
		SubPlayerInfo(-1 , "item" , 12002 , -1)
		SubPlayerInfo(-1 , "item" , 12003 , -1)
		SubPlayerInfo(-1 , "item" , 12004 , -1)
		SubPlayerInfo(-1 , "item" , 12005 , -1)
		SubPlayerInfo(-1 , "item" , 12006 , -1)
		SubPlayerInfo(-1 , "item" , 12007 , -1)
		SubPlayerInfo(-1 , "item" , 12008 , -1)
		
		//????????????????
		if $player_days == $today_time
			if $player_time == $time_hour
				$done_player_number = GetServerVar(50)
				$done_player_number = $done_player_number + 1
				//??????
				if $done_player_number == 1
					$a = $level * $level
					$addexp = $a * 30
					$b = 200 - $level
					$c = $b * $level
					$addmoney = $c * 3
					//???
					AddPlayerInfo(-1 ,"item" ,64244 , 2)
					AddPlayerInfo(-1 ,"exp" ,$addexp)
					AddPlayerInfo(-1 ,"money" ,$addmoney)
					#player_name = GetPlayerInfo( -1, "name" )
					BC( "screen", "server", -1, "The hero ",#player_name," is the winner of this round of Armor of the Brave.")
					BC( "chat", "server", -1, "The hero ",#player_name," is the winner of this round of Armor of the Brave.")
				endif
				//???2-8?
				if $done_player_number < 9
					if $done_player_number > 1
						$a = $level * $level
						$addexp = $a * 20
						$b = 200 - $level
						$c = $b * $level
						$addmoney = $c * 2
						//???
						AddPlayerInfo(-1 ,"item" ,64244 , 1)
						AddPlayerInfo(-1 ,"exp" ,$addexp)
						AddPlayerInfo(-1 ,"money" ,$addmoney)
						#player_name = GetPlayerInfo( -1, "name" )
						BC( "screen", "server", -1, "The hero ",#player_name,"No. ",$done_player_number,"Finish this round of Armor of the Brave.")
						BC( "chat", "server", -1, "The hero ",#player_name,"No. ",$done_player_number,"Finish this round of Armor of the Brave.")
					endif
				endif
				//???9-20?
				if $done_player_number < 21
					if $done_player_number > 8
						$a = $level * $level
						$addexp = $a * 10
						$b = 200 - $level
						$c = $b * $level
						$d = $c * 3
						$addmoney = $d / 2
						//???
						AddPlayerInfo(-1 ,"item" ,1 , 2)
						AddPlayerInfo(-1 ,"exp" ,$addexp)
						AddPlayerInfo(-1 ,"money" ,$addmoney)
						#player_name = GetPlayerInfo( -1, "name" )
						BC( "screen", "server", -1, "The hero ",#player_name,"No. ",$done_player_number,"Finish this round of Armor of the Brave.")
						BC( "chat", "server", -1, "The hero ",#player_name,"No. ",$done_player_number,"Finish this round of Armor of the Brave.")
					endif
				endif
				//?50????,???????
				if $done_player_number < 51
					if $done_player_number > 20
						$a = $level * $level
						$addexp = $a * 6
						$b = 200 - $level
						$c = $b * $level
						$addmoney = $c
						//???
						AddPlayerInfo(-1 ,"item" ,1 , 1)
						AddPlayerInfo(-1 ,"exp" ,$addexp)
						AddPlayerInfo(-1 ,"money" ,$addmoney)
						BC( "chat", "player", -1, "You have finished rank 25-50 in the Armor of the Brave event! You will be awarded a standard amount of EXP and Coins." )
					endif
				endif
				//51????????
				if $done_player_number >= 51
					$a = $level * $level
					$addexp = $a * 6
					//$b = 200 - $level
					//$c = $b * $level
					//$addmoney = $c
					//???
					//AddPlayerInfo(-1 ,"item" ,1 , 1)
					AddPlayerInfo(-1 ,"exp" ,$addexp)
					//AddPlayerInfo(-1 ,"money" ,$addmoney)
					BC( "chat", "player", -1, "You are out of ranking 50 in the event of Armor of the Brave,you can only get basic exp." )
				endif
				
				//????????????????????
				SetServerVar(50 ,$done_player_number )
				return
			endif
		endif

		//????????????????,????????
		$a = $level * $level
		$addexp = $a * 6
		$b = 200 - $level
		$c = $b * $level
		$addmoney = $c
		//???
		//AddPlayerInfo(-1 ,"item" ,1 , 1)
		AddPlayerInfo(-1 ,"exp" ,$addexp)
		//AddPlayerInfo(-1 ,"money" ,$addmoney)
		BC( "chat", "player", -1, "It has been over one hour since you've accepted the quest. You will receive a standard amount of EXP." )
		
	}