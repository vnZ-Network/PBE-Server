	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/12
	//		Author:???
	//		TaskName:NPC-gonghui136.s
	//		TaskID:????????
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	function OnOption0(){
	
	
		//?????
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You're not in a Guild! Apply at the Guild Administrator.")
	  	return
	  endif
		
		//??
		$level = GetPlayerInfo(-1, "level")
		if $level <= 30
			BC( "dialogbox", "player", -1, "You are not LV31 now.")
			return
		endif
		
		//???????,6???,???1?
		$result1 = IsTaskAccept( -1 , 2150 )
		$result2 = IsTaskAccept( -1 , 2151 )
		$result3 = IsTaskAccept( -1 , 2607 )
		$result4 = IsTaskAccept( -1 , 2608 )
		$result5 = IsTaskAccept( -1 , 2609 )
		$result6 = IsTaskAccept( -1 , 2610 )
		
		if $result1 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result2 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result3 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result4 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result5 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result6 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif

		
		//????????8???????
		$taskresult = IsTaskAccept( -1 , 2144 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2145 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2146 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2147 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2148 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2149 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2152 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2153 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		//??????????????
		$taskresult = IsTaskAccept( -1 , 2611 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2612 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2613 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2614 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2615 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2616 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2617 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2618 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		//???????????
		$today = GetSystemTime( "yday" )
		$myday = GetPlayerVar( -1 , 4061 )
		$myday1 = GetPlayerVar(-1,4036)
		$myday2 = GetPlayerVar(-1,4037)
		if $today == $myday1
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday2
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		
		if $today == $myday
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		else
			
			//???
			$result = AcceptTask( -1 , 2150 )
			if $result == 0
			
				
				//????-START
				$TJ_join_number = GetGlobalVar(917)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(917 , $TJ_join_number)
				//????-END
				
			endif
			
		endif
		
		
		}
		
		
		//?2???
		function OnOption1(){
	
	
		//?????
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You're not in a Guild! Apply at the Guild Administrator.")
	  	return
	  endif
		
		//??
		$level = GetPlayerInfo(-1, "level")
		if $level <= 30
			BC( "dialogbox", "player", -1, "You are not LV31 now.")
			return
		endif
		
		//???????,2???,???1?
		$result1 = IsTaskAccept( -1 , 2150 )
		$result2 = IsTaskAccept( -1 , 2151 )
		$result3 = IsTaskAccept( -1 , 2607 )
		$result4 = IsTaskAccept( -1 , 2608 )
		$result5 = IsTaskAccept( -1 , 2609 )
		$result6 = IsTaskAccept( -1 , 2610 )
		
		if $result1 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result2 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result3 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result4 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result5 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result6 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		
		//????????8???????
		$taskresult = IsTaskAccept( -1 , 2144 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2145 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2146 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2147 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2148 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2149 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2152 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2153 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		//??????????????
		$taskresult = IsTaskAccept( -1 , 2611 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2612 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2613 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2614 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2615 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2616 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2617 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2618 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		
		//???????????
		$today = GetSystemTime( "yday" )
		$myday = GetPlayerVar( -1 , 4061 )
		$myday1 = GetPlayerVar(-1,4036)
		$myday2 = GetPlayerVar(-1,4037)
		if $today == $myday1
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday2
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		else
			
			//???
			$result = AcceptTask( -1 , 2151 )
			if $result == 0
			
				
				//????-START
				$TJ_join_number = GetGlobalVar(917)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(917 , $TJ_join_number)
				//????-END
				
			endif
			
		endif
		
		
		}
		
		function OnOption2(){
			
			//?????
			$gid = GetPlayerInfo( -1 , "guildid" )
	 		if $gid == 0
	  		BC( "dialogbox", "player", -1, "You're not in a Guild! Apply at the Guild Administrator.")
	  		return
	  	endif
			
			
			
			//?????????
			$today = GetSystemTime( "yday" )
			$myday = GetPlayerVar( -1 , 4065 )
			
			if $today == $myday
				BC( "dialogbox", "player", -1, "You've already received your Guild Gift. Please, come back tomorrow! ")
				return
			endif
			
			
			//?????
			$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
			if $nullitem <= 0
				BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot.")
				return
			else
				//???
				AddPlayerInfo( -1 , "item" , 64405 , 1 )
				SetPlayerVar( -1 , 4065 , $today )
			endif
		
		}
		
		function OnOption3(){
			
			//?????
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You're not in a Guild! Apply at the Guild Administrator.")
	  	return
	  endif
		
		//??
		$level = GetPlayerInfo(-1, "level")
		if $level <= 30
			BC( "dialogbox", "player", -1, "You are not LV31 now.")
			return
		endif
		
		//???????,6???,???1?
		$result1 = IsTaskAccept( -1 , 2150 )
		$result2 = IsTaskAccept( -1 , 2151 )
		$result3 = IsTaskAccept( -1 , 2607 )
		$result4 = IsTaskAccept( -1 , 2608 )
		$result5 = IsTaskAccept( -1 , 2609 )
		$result6 = IsTaskAccept( -1 , 2610 )
		
		if $result1 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result2 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result3 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result4 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result5 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result6 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif

		
		//????????8???????
		$taskresult = IsTaskAccept( -1 , 2144 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2145 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2146 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2147 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2148 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2149 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2152 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2153 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		//??????????????
		$taskresult = IsTaskAccept( -1 , 2611 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2612 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2613 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2614 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2615 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2616 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2617 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2618 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		//???????????
		$today = GetSystemTime( "yday" )
		$myday = GetPlayerVar( -1 , 4036 )
		$myday1 = GetPlayerVar( -1 , 4061 )
		$myday2 = GetPlayerVar( -1 , 4037 )
		if $today == $myday1
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday2
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		else
			
			//???
			$result = AcceptTask( -1 , 2607 )
			if $result == 0
			
				
				//????-START
				$TJ_join_number = GetGlobalVar(917)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(917 , $TJ_join_number)
				//????-END
				
			endif
			
		endif
		
			
		}
		
		
		function OnOption4(){
			
			//?????
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You're not in a Guild! Apply at the Guild Administrator.")
	  	return
	  endif
		
		//??
		$level = GetPlayerInfo(-1, "level")
		if $level <= 30
			BC( "dialogbox", "player", -1, "You are not LV31 now.")
			return
		endif
		
		//???????,6???,???1?
		$result1 = IsTaskAccept( -1 , 2150 )
		$result2 = IsTaskAccept( -1 , 2151 )
		$result3 = IsTaskAccept( -1 , 2607 )
		$result4 = IsTaskAccept( -1 , 2608 )
		$result5 = IsTaskAccept( -1 , 2609 )
		$result6 = IsTaskAccept( -1 , 2610 )
		
		if $result1 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result2 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result3 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result4 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result5 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result6 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif

		
		//????????8???????
		$taskresult = IsTaskAccept( -1 , 2144 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2145 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2146 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2147 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2148 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2149 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2152 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2153 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		//??????????????
		$taskresult = IsTaskAccept( -1 , 2611 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2612 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2613 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2614 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2615 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2616 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2617 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2618 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		//???????????
		$today = GetSystemTime( "yday" )
		$myday = GetPlayerVar( -1 , 4036 )
		$myday1 = GetPlayerVar( -1 , 4061 )
		$myday2 = GetPlayerVar( -1 , 4037 )
		if $today == $myday1
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday2
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		else
			
			//???
			$result = AcceptTask( -1 , 2608 )
			if $result == 0
			
				
				//????-START
				$TJ_join_number = GetGlobalVar(917)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(917 , $TJ_join_number)
				//????-END
				
			endif
			
		endif
		
			
		}
		
		function OnOption5(){
			
			//?????
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You're not in a Guild! Apply at the Guild Administrator.")
	  	return
	  endif
		
		//??
		$level = GetPlayerInfo(-1, "level")
		if $level <= 30
			BC( "dialogbox", "player", -1, "You are not LV31 now.")
			return
		endif
		
		//???????,6???,???1?
		$result1 = IsTaskAccept( -1 , 2150 )
		$result2 = IsTaskAccept( -1 , 2151 )
		$result3 = IsTaskAccept( -1 , 2607 )
		$result4 = IsTaskAccept( -1 , 2608 )
		$result5 = IsTaskAccept( -1 , 2609 )
		$result6 = IsTaskAccept( -1 , 2610 )
		
		if $result1 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result2 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result3 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result4 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result5 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result6 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif

		
		//????????8???????
		$taskresult = IsTaskAccept( -1 , 2144 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2145 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2146 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2147 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2148 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2149 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2152 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2153 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		//??????????????
		$taskresult = IsTaskAccept( -1 , 2611 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2612 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2613 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2614 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2615 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2616 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2617 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2618 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		//???????????
		$today = GetSystemTime( "yday" )
		$myday = GetPlayerVar( -1 , 4037 )
		$myday1 = GetPlayerVar( -1 , 4061 )
		$myday2 = GetPlayerVar( -1 , 4036 )
		if $today == $myday1
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday2
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		else
			
			//???
			$result = AcceptTask( -1 , 2609 )
			if $result == 0
			
				
				//????-START
				$TJ_join_number = GetGlobalVar(917)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(917 , $TJ_join_number)
				//????-END
				
			endif
			
		endif
		
			
		}
		
		function OnOption6(){
			
			//?????
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You're not in a Guild! Apply at the Guild Administrator.")
	  	return
	  endif
		
		//??
		$level = GetPlayerInfo(-1, "level")
		if $level <= 30
			BC( "dialogbox", "player", -1, "You are not LV31 now.")
			return
		endif
		
		//???????,6???,???1?
		$result1 = IsTaskAccept( -1 , 2150 )
		$result2 = IsTaskAccept( -1 , 2151 )
		$result3 = IsTaskAccept( -1 , 2607 )
		$result4 = IsTaskAccept( -1 , 2608 )
		$result5 = IsTaskAccept( -1 , 2609 )
		$result6 = IsTaskAccept( -1 , 2610 )
		
		if $result1 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result2 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result3 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result4 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result5 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif
		
		if $result6 == 0
			BC( "dialogbox", "player", -1, "You have your quests. Now, go complete them!")
			return
		endif

		
		//????????8???????
		$taskresult = IsTaskAccept( -1 , 2144 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2145 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2146 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2147 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2148 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2149 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2152 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2153 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		//??????????????
		$taskresult = IsTaskAccept( -1 , 2611 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2612 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2613 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2614 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2615 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2616 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2617 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		
		$taskresult = IsTaskAccept( -1 , 2618 )
		if $taskresult == 0
			BC( "dialogbox", "player", -1, "You have other Escort Quest now, you can only receive new quest after delete the old one.")
			return
		endif
		////////////////////////////////////////////////////////////////////////////////////////////////
		
		
		//???????????
		$today = GetSystemTime( "yday" )
		$myday = GetPlayerVar( -1 , 4037 )
		$myday1 = GetPlayerVar( -1 , 4061 )
		$myday2 = GetPlayerVar( -1 , 4036 )
		if $today == $myday1
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday2
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		endif
		if $today == $myday
			BC( "dialogbox", "player", -1, "You've finished all your Guild quests for the day. Please, come back tomorrow.")
			return
		else
			
			//???
			$result = AcceptTask( -1 , 2610 )
			if $result == 0
			
				
				//????-START
				$TJ_join_number = GetGlobalVar(917)
				$TJ_join_number = $TJ_join_number + 1
				SetGlobalVar(917 , $TJ_join_number)
				//????-END
				
			endif
			
		endif
		
			
		}
		
		