	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:???????
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){

//59775   ?????????      	
//59776   ??????    	
//59777   ?????      	
//59778   ????        	
//59779   ????        	
//59780   ????        	
//59782   ?????????      	
//59783   ????????	

//-----------------------??start--------------------------------
		$item1 = GetPlayerInfo( -1, "item", 59776)
		$item4 = GetPlayerInfo( -1, "item", 59779)
		$item5 = GetPlayerInfo( -1, "item", 59782)
		
		if $item1 == 0
			if $item4 == 0
				DisableNpcOption(0)
			endif
		endif
			
		if $item5 == 0
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		
		$ectype_id = GetEctypeID( -1 , 458 )
		if $ectype_id > 0
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
		endif
		
		$item6 = GetPlayerInfo( -1, "item", 59775)
		$item7 = GetPlayerInfo( -1, "item", 59780)
		
		$item99 = $item1 + $item4
		$item99 = $item99 + $item5
		$item99 = $item99 + $item6
		$item99 = $item99 + $item7
		$isacc = IsTaskAccept( -1, 1946 )
		
		if $item99 == 0
			DisableNpcOption(3)
		endif
		if $isacc != 1
			DisableNpcOption(3)
		endif
//-----------------------??end--------------------------------
//59797	?????????
//59800	????
//59802	????
//59805	????????
//59807	?????
//-----------------------??start--------------------------------

//59798	???????
		$item8 = GetPlayerInfo( -1, "item", 59798)
//59801	????
		$item9 = GetPlayerInfo( -1, "item", 59801)
//59804	?????????      
		$item10 = GetPlayerInfo( -1, "item", 59804)
//59799	?????
		$item13 = GetPlayerInfo( -1, "item", 59799)
		
		if $item8 == 0
			if $item9 == 0
				if $item13 == 0
					DisableNpcOption(4)
				endif
			endif
		endif
			
		if $item10 == 0
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		
		$ectype_id = GetEctypeID( -1 , 477 )
		if $ectype_id > 0
			DisableNpcOption(5)
		else
			DisableNpcOption(6)
		endif
		
		$item11 = GetPlayerInfo( -1, "item", 59797)
		$item12 = GetPlayerInfo( -1, "item", 59802)
		
		$item77 = $item8 + $item9
		$item77 = $item77 + $item10
		$item77 = $item77 + $item11
		$item77 = $item77 + $item12
		$isacc = IsTaskAccept( -1, 1949 )
		
		if $item77 == 0
			DisableNpcOption(7)
		endif
		if $isacc != 1
			DisableNpcOption(7)
		endif


//-----------------------??end--------------------------------
	}
	

	function OnOption0(){
	//??????????
		$item1 = GetPlayerInfo( -1, "item", 59776)
		$item2 = GetPlayerInfo( -1, "item", 59777)
		$item3 = GetPlayerInfo( -1, "item", 59778)
		$item4 = GetPlayerInfo( -1, "item", 59779)
		
		if $item1 == 0
			if $item4 == 0
				BC( "dialogbox" , "player" , -1 , "Quest item is missing!" )
				return
			endif
		endif
		
			$isacc = IsTaskAccept( -1, 1941 )
			if $isacc == 1
				AcceptTask( -1, 1941 )
			else
				BC( "screen" , "player" , -1 , "You have already received the Burning Power quest." )
			endif
				
			if $item2 < 1
				$isacc1 = IsTaskAccept( -1, 1942 )
				$isacc2 = IsTaskAccept( -1, 1944 )
				$isacc = $isacc1 + $isacc2
				if $isacc == 2
					$rand = RandomNumber( 0, 99 )
					if $rand < 50
						AcceptTask( -1, 1942 )
					else
						AcceptTask( -1, 1944 )
					endif
				else
					BC( "screen" , "player" , -1 , "You have already received the Will of the Far Sky quest." )
				endif
			endif
				
			if $item3 < 1
				$isacc1 = IsTaskAccept( -1, 1943 )
				$isacc2 = IsTaskAccept( -1, 1945 )
				$isacc = $isacc1 + $isacc2
				if $isacc == 2
					$rand = RandomNumber( 0, 99 )
					if $rand < 50
						AcceptTask( -1, 1943 )
					else
						$isacc = IsTaskAccept( -1, 1922 )
						AcceptTask( -1, 1945 )
					endif
				else
					BC( "screen" , "player" , -1 , "You have already received the Eye of Understanding quest." )
				endif
			endif


	}


	function OnOption1(){
	//??????????
		$item5 = GetPlayerInfo( -1, "item", 59782)
		if $item5 > 0
			//???
			$succeed = FlyToEctype( -1 , 458 , 39 , 63 )
			if $succeed > 0
				$ectype_id = GetEctypeID( -1 , 458 )
				$ectype_uid = GetEctypeUniqueID( -1 , 458 )
				$playerid = GetPlayerID()
				StartEctypeTimer( -1 , 458 , 1 )
				SetEctypeVar($ectype_id , 1 , 10 )
				SetEctypeVar($ectype_id , 110 , $playerid )
				BC( "screen" , "player" , -1 , "You have entered the Burning Realm." )
				AddStatus( -1, 7632, 1 )
				//TellEctypeAdditionalInfo( -1 , "GUID:05288000005" )
			else
				BC( "dialogbox", "player", -1, "Try again later." )
				return
			endif
		else
			BC( "dialogbox", "player", -1 , "You don't have the Scarlet Phoenix Core." )
		endif
		
	}
	
	function OnOption2(){
	//??????,??????
		$ectype_id = GetEctypeID( -1 , 458 )
		if $ectype_id > 0
			$result = ReleaseEctype ($ectype_id)
			BC( "screen" , "player" , -1 , "Instance has been reset." )
		endif
		
	}


	function OnOption3(){
		//??????--??
		$item1 = GetPlayerInfo( -1, "item", 59775)
		$item2 = GetPlayerInfo( -1, "item", 59776)
		$item3 = GetPlayerInfo( -1, "item", 59779)
		$item4 = GetPlayerInfo( -1, "item", 59780)
		$item5 = GetPlayerInfo( -1, "item", 59782)
		
		$item99 = $item1 + $item2
		$item99 = $item99 + $item3
		$item99 = $item99 + $item4
		$item99 = $item99 + $item5						
		$isacc = IsTaskAccept( -1, 1946 )
		$isdone = IsTaskDone( -1, 1946 )
		//BC( "dialogbox", "player", -1, "=", $item99, "=" , $isacc, "=" , $isdone, "=" )

		if $item99 == 0
			BC( "dialogbox", "player", -1, "You do not meet the conditions to receive the quest." )
			return
		endif
		if $isacc != 1
			BC( "dialogbox", "player", -1, "You have already received the Scarlet Phoenix Heart quest." )
			return
		endif
		if $isdone == 0
			BC( "dialogbox", "player", -1, "You have already finished this quest." )
			return
		endif
		
		AcceptTask( -1, 1946 )
		
	}


	function OnOption4(){
	//??????????
		
		$item20 = GetPlayerInfo( -1, "item", 59807)
		$isacc = IsTaskAccept( -1, 1948 )
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		
		
		if $isacc == 0
			BC( "screen" , "player" , -1 , "You have already received the Flying Dragon quest." )
			return
		endif
//59807	?????

		if $item20 == 0
			if $nullitem < 1
				BC( "screen", "player", -1, "You do not have enough space in your bag.")
				return
			endif
			$result = AddPlayerInfo( -1, "item", 59807 ,1)
			AcceptTask( -1, 1948 )
			SetPlayerVar(-1, 3301, 1 )
		else
			AcceptTask( -1, 1948 )
			SetPlayerVar(-1, 3301, 1 )
		endif
	}


	function OnOption5(){
	//??????????
		//59804	?????????     
		$item5 = GetPlayerInfo( -1, "item", 59804)
		if $item5 == 0
			BC( "dialogbox", "player", -1 , "You don't have an Emerald Dragon Core." )
			return
		endif
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You must be the Party Leader." )
			return
		endif
		
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		if $teamplayer1_id != -1
			$len1 = GetPlayerDistance( $player_id, $teamplayer1_id )
		endif
		if $teamplayer2_id != -1
			$len2 = GetPlayerDistance( $player_id, $teamplayer2_id )
		endif
		if $teamplayer3_id != -1
			$len3 = GetPlayerDistance( $player_id, $teamplayer3_id )
		endif
		if $teamplayer4_id != -1
			$len4 = GetPlayerDistance( $player_id, $teamplayer4_id )
		endif
		if $teamplayer5_id != -1
			$len5 = GetPlayerDistance( $player_id, $teamplayer5_id )
		endif
		if $teamplayer6_id != -1
			$len6 = GetPlayerDistance( $player_id, $teamplayer6_id )
		endif
		
		$succeed = FlyToEctype( -1 , 477 , 54 , 48 )
		if $succeed > 0
			$ectype_id = GetEctypeID( -1 , 477 )
			$ectype_uid = GetEctypeUniqueID( -1 , 477 )
			StartEctypeTimer( -1 , 477 , 1 )
			SetEctypeVar($ectype_id , 1 , 10 )
			SetEctypeVar($ectype_id , 110 , $player_id )
			BC( "screen" , "player" , -1 , "You entered the Serene Realm. Click on the Emerald Dragon Core to begin the Trial of Ice." )
		else
			BC( "dialogbox", "player", -1, "Try again later." )
			return
		endif
		
		
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				if $len1 < 10
					$succeed = FlyToEctype( $teamplayer1_id , 477 , 54 , 48 )
					if $succeed > 0
						BC( "screen" , "player" , $teamplayer1_id , "You entered the Serene Realm. Please wait for the Party Leader to summon the Emerald Dragon Soul." )
					else
						BC( "dialogbox", "player", $teamplayer1_id, "Try again later." )
						return
					endif
				endif
			endif
		endif
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				if $len2 < 10
					$succeed = FlyToEctype( $teamplayer2_id , 477 , 54 , 48 )
					if $succeed > 0
						BC( "screen" , "player" , $teamplayer2_id , "You entered the Serene Realm. Please wait for the Party Leader to summon the Emerald Dragon Soul." )
					else
						BC( "dialogbox", "player", $teamplayer2_id, "Try again later." )
						return
					endif
				endif
			endif
		endif
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				if $len3 < 10
					$succeed = FlyToEctype( $teamplayer3_id , 477 , 54 , 48 )
					if $succeed > 0
						BC( "screen" , "player" , $teamplayer3_id , "You entered the Serene Realm. Please wait for the Party Leader to summon the Emerald Dragon Soul." )
					else
						BC( "dialogbox", "player", $teamplayer3_id, "Try again later." )
						return
					endif
				endif
			endif
		endif
		if $teamplayer4_id != -1
			if $$teamplayer4_id != $team_headerID
				if $len4 < 10				
					$succeed = FlyToEctype( $teamplayer4_id , 477 , 54 , 48 )
					if $succeed > 0
						BC( "screen" , "player" , $teamplayer4_id , "You entered the Serene Realm. Please wait for the Party Leader to summon the Emerald Dragon Soul." )
					else
						BC( "dialogbox", "player", $teamplayer4_id, "Try again later." )
						return
					endif
				endif
			endif
		endif
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				if $len5 < 10
					$succeed = FlyToEctype( $teamplayer5_id , 477 , 54 , 48 )
					if $succeed > 0
						BC( "screen" , "player" , $teamplayer5_id , "You entered the Serene Realm. Please wait for the Party Leader to summon the Emerald Dragon Soul." )
					else
						BC( "dialogbox", "player", $teamplayer5_id, "Try again later." )
						return
					endif
				endif
			endif
		endif
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				if $len6 < 10
					$succeed = FlyToEctype( $teamplayer6_id , 477 , 54 , 48 )
					if $succeed > 0
						BC( "screen" , "player" , $teamplayer6_id , "You entered the Serene Realm. Please wait for the Party Leader to summon the Emerald Dragon Soul." )
					else
						BC( "dialogbox", "player", $teamplayer6_id, "Try again later." )
						return
					endif
				endif
			endif
		endif
		

		
		
		
	}
	
	function OnOption6(){
	//??????
		$ectype_id = GetEctypeID( -1 , 477 )
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "You are not the Party Leader." )
			return
		endif		
		if $ectype_id > 0
			$result = ReleaseEctype ($ectype_id)
			BC( "screen" , "player" , -1 , "Instance has been reset." )
		endif
		
	}


	function OnOption7(){
		//??????-??
		$item8 = GetPlayerInfo( -1, "item", 59798)
		$item9 = GetPlayerInfo( -1, "item", 59801)
		$item10 = GetPlayerInfo( -1, "item", 59804)
		$item11 = GetPlayerInfo( -1, "item", 59797)
		$item12 = GetPlayerInfo( -1, "item", 59802)
		
		$item77 = $item8 + $item9
		$item77 = $item77 + $item10
		$item77 = $item77 + $item11
		$item77 = $item77 + $item12
					
		$isacc = IsTaskAccept( -1, 1949 )
		$isdone = IsTaskDone( -1, 1949 )
		//BC( "dialogbox", "player", -1, "=", $item99, "=" , $isacc, "=" , $isdone, "=" )

		if $item77 == 0
			BC( "dialogbox", "player", -1, "You do not meet the conditions to receive the quest." )
			return
		endif
		if $isacc != 1
			BC( "dialogbox", "player", -1, "You have acquired the Emerald Dragon Soul." )
			return
		endif
		if $isdone == 0
			BC( "dialogbox", "player", -1, "You have already finished this quest." )
			return
		endif
		
		AcceptTask( -1, 1949 )
		
	}
	
	//???????????
	function OnOption8(){
 		$count = GetPlayerInfo( -1, "item", 44084 )
 		
 		if $count <= 0
 			BC( "dialogbox", "player", -1, "You don't have a Dimensional Core!")
 			return
 		endif
 		
 		$result = SubPlayerInfo( -1, "item", 44084, 1 )
 		
 		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 59782, 1 )
	}
//???????????
	function OnOption9(){
 		$count = GetPlayerInfo( -1, "item", 44084 )
 		
 		if $count <= 0
 			BC( "dialogbox", "player", -1, "You don't have a Dimensional Core!")
 			return
 		endif
 		
 		$result = SubPlayerInfo( -1, "item", 44084, 1 )
 		
 		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 59804, 1 )
	}