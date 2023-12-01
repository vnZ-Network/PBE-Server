	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/05
	//		Author:??
	//		TaskName:NPC-gerenjingji.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnRequest(){	
//	?????1-12?????????
		$hour = GetSystemTime( "hour" )	
		$time_week = GetSystemTime( "week" )
		
		if $time_week == 6
			DisableNpcOption(0)
		endif
		
		if $hour >= 2
			if $hour < 12 
				DisableNpcOption(0)
			endif	
		endif
}

	
	function OnOption0(){
		
		$Men1 = GetTeamMemberID( -1, 0 )
		$Men2 = GetTeamMemberID( -1, 1 )
		$Men3 = GetTeamMemberID( -1, 2 )
		$Men4 = GetTeamMemberID( -1, 3 )
		$Men5 = GetTeamMemberID( -1, 4 )
		$Men6 = GetTeamMemberID( -1, 5 )
		$headerID = GetTeamHeaderID( -1 )
		
		$id =  GetPlayerID()
		$a = IsPlayerInTeam($id)
		if $a == -1
//			 BC( "chat", "player", -1, "GUID:03442000000" )
			 
			$result = BattleSign( 320 )
			
			if $result == 0
				BC( "chat", "player", -1 , "Queuing for Arena, please wait for the war to start!" )
				BC( "screen", "player", -1 , "Queuing for Arena, please wait for the war to start!" )
			endif
			
			if $result == 2
				BC( "messagebox", "player", -1, "You have signed up, please wait to enter the battleground." )
				return
			endif
		
			if $result == 3
				BC( "dialogbox", "player", -1, "Arena instance is full now, please wait." )
				return
			endif
		endif
		
		if $a == 0
			if $Men1 != -1
			 	BC( "chat", "player", $Men1, "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )
			 	BC( "screen", "player", $Men1 , "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )
			 endif
			 if $Men2 != -1
			 	BC( "chat", "player", $Men2, "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )
			 	BC( "screen", "player", $Men2 , "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )
			 endif
			  if $Men3 != -1
			 	BC( "chat", "player", $Men3, "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )
			 	BC( "screen", "player", $Men3 , "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )			 	
			 endif
			  if $Men4 != -1
			 	BC( "chat", "player", $Men4, "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )
			 	BC( "screen", "player", $Men4 , "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )			 	
			 endif
			  if $Men5 != -1
			 	BC( "chat", "player", $Men5, "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )
			 	BC( "screen", "player", $Men5 , "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )			 	
			 endif			 
			  if $Men6 != -1
			 	BC( "chat", "player", $Men6, "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )
			 	BC( "screen", "player", $Men6 , "The Battlefield can only be entered by a single player. Please quit your party and enter the queue again. " )		 	
			 endif			 						
		endif	
}			

	function OnOption1(){
	
	$count = GetPlayerFightCount()
	$temp_count = 5 - $count
	
	if $count < 5
		BC( "dialogbox", "player", -1, "You can get Glory for the first 5 Rounds of Ancient Ruins each day.\nYou've already participated in the Arena.", $count,"time(s)\nAfter another", $temp_count,"time(s), you will not get Glory any more." )
	else
		BC( "dialogbox", "player", -1, "You've already participated in  Individual Arena {#ffff002a=", $count,"time(s)\nYou will not get any Glory if you continue, but you can still get personal scores and EXP." )
	endif
	

		
}	
		
	function OnOption2(){	
		
		FlyToMap(-1 ,475 , 100 ,64 )	
		
}							