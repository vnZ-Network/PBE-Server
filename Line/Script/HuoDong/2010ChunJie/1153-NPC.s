 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.1.15
 //  Author:??	
 //  TaskName: ???? 
 //****************************  
	function OnRequest(){
			//??????

	$Now_Mday =  GetSystemTime( "mday" )
	$Now_Month =  GetSystemTime( "month" )
	$Now_Year =  GetSystemTime( "year" )
	if $Now_Year != 2013 
	  DisableNpcOption(0)
	  DisableNpcOption(1)
	  DisableNpcOption(2)
	  DisableNpcOption(3)
    return
  endif
  if $Now_Month != 2 
	   DisableNpcOption(0)
     return
  endif
  if $Now_Mday < 19
	   DisableNpcOption(0)
     return
  endif
   if $Now_Mday > 25
	   DisableNpcOption(0)
     return
  endif
	}
	
	
	function OnOption0(){
		$n = GetPlayerVar(-1, 334)
		if $n == 1
			BC("screen", "player", -1, "N/A?????????,?????????!")
			return
		endif
		BC("screen", "player", -1, "N/A?????!????????!")
		SetPlayerVar(-1, 341, 1)
	}
	function OnOption1(){
		$n = GetPlayerVar(-1, 334)
		if $n == 1
			BC("screen", "player", -1, "N/A?????????,?????????!")
			return
		endif
		BC("screen", "player", -1, "N/A???!?????????!")
		$m = SetPlayerVar(-1, 334, 1)
		//if $m == 0
		//	return
		//endif
		SendMail(-1,"Puzzle Rewards","N/A????????????????,???????,????!", 0 ,59557)
		$time = GetPlayerVar(-1, 3453 )
		$time = $time + 1
		SetPlayerVar(-1, 3453, $time )
		//?????????
		$firsttime = GetPlayerVar(-1, 342 )
		if $firsttime == 0
			BC("screen", "player", -1, "N/A??????????,????????????!")
				SendMail(-1,"Puzzle Rewards","N/A????????????????,???????????!", 0 ,54287)
			SetPlayerVar(-1, 342, 1 )
		endif
		//?????????
		$totaltime = GetPlayerVar(-1, 3453 )
		if $totaltime == 28
			$firsttime = GetPlayerVar(-1, 343 )
			if $firsttime == 0
				BC("screen", "player", -1, "N/A????,???????,???????,????????????!")
				SendMail(-1,"Puzzle Rewards","N/A????,???????,???????,????????????!", 0 ,54288)	
			endif		
		endif
		//????,????,?????
		$totaltime = GetPlayerVar(-1, 3453 )
		$isfalse = GetPlayerVar(-1, 341 )
		if $totaltime == 28
			if $isfalse == 0
				$firsttime = GetPlayerVar(-1, 344 )
				if $firsttime == 0
					BC("screen", "player", -1, "N/A????,???????,??????????????,????????????!")
					BC("screen", "player", -1, "N/A????,???????,??????????????,????"????"!")
					SendMail(-1,"Puzzle Rewards","N/A????,???????,??????????????,????????????!", 0 ,54289)
					AddTitle(-1, 99)
					#name = GetPlayerInfo(-1, "name" )
					BC("screen", "server", -1, "Player",$name,"N/A?????????????????????,???"????-????(?)"???"????"!")			
					SetPlayerVar(-1, 344, 1 )					
				endif
			endif			
		endif		
	}
	function OnOption2(){
		$n = GetPlayerVar(-1, 334)
		if $n == 1
			BC("screen", "player", -1, "N/A?????????,?????????!")
			return
		endif
		BC("screen", "player", -1, "N/A?????!????????!")
		SetPlayerVar(-1, 341, 1)		
	}
	function OnOption3(){
		$n = GetPlayerVar(-1, 334)
		if $n == 1
			BC("screen", "player", -1, "N/A?????????,?????????!")
			return
		endif
		BC("screen", "player", -1, "N/A?????!????????!")
		SetPlayerVar(-1, 341, 1)		
	}
		
	