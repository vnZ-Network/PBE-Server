  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/25
	//		Author: ÌÆÒú
	//		TaskName:Ectype-nengliangzhijing-Monster-51325.s
	//		TaskID:ËÀÍö
	//****************************************
	
	function OnDead(){
		$ectype_ID = GetEctypeID(-1 ,249)
		if $ectype_ID > 0

	//----------µôÂä°ü
			$teamplayer1_id =  GetTeamMemberID( -1, 0 )
			$teamplayer2_id =  GetTeamMemberID( -1, 1 )
			$teamplayer3_id =  GetTeamMemberID( -1, 2 )
			$teamplayer4_id =  GetTeamMemberID( -1, 3 )
			$teamplayer5_id =  GetTeamMemberID( -1, 4 )
			$teamplayer6_id =  GetTeamMemberID( -1, 5 )		
							
			$team_level = GetEctypeVar($ectype_ID ,111)
			$drop_id1 = 90087	
																								
			if $teamplayer1_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer1_id )	
				$Map1 = GetPlayerInfo( $teamplayer1_id, "mapid" )
				if $Map1 == $ectype_ID				
					if $len <= 60
						AddPlayerInfo($teamplayer1_id, "prestige", 44, 80)
			     			DropMonsterItems($teamplayer1_id, $drop_id1 )
					endif
				endif
			endif	
											
			if $teamplayer2_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer2_id )
				$Map2 = GetPlayerInfo( $teamplayer2_id, "mapid" )
				if $Map2 == $ectype_ID				
					if $len <= 60
						AddPlayerInfo($teamplayer2_id, "prestige", 44, 80)
			     			DropMonsterItems($teamplayer2_id, $drop_id1 )
					endif
				endif
			endif	
			
			if $teamplayer3_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer3_id )	
				$Map3 = GetPlayerInfo( $teamplayer3_id, "mapid" )
				if $Map3 == $ectype_ID				
					if $len <= 60
						AddPlayerInfo($teamplayer3_id, "prestige", 44, 80)
			     			DropMonsterItems($teamplayer3_id, $drop_id1 )
					endif
				endif
			endif	

			if $teamplayer4_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer4_id )	
				$Map4 = GetPlayerInfo( $teamplayer4_id, "mapid" )
				if $Map4 == $ectype_ID				
					if $len <= 60
						AddPlayerInfo($teamplayer4_id, "prestige", 44, 80)
			     			DropMonsterItems($teamplayer4_id, $drop_id1 )
					endif
				endif
			endif	
									
			if $teamplayer5_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer5_id )	
				$Map5 = GetPlayerInfo( $teamplayer5_id, "mapid" )
				if $Map5 == $ectype_ID				
					if $len <= 60
						AddPlayerInfo($teamplayer5_id, "prestige", 44, 80)
			     			DropMonsterItems($teamplayer5_id, $drop_id1 )
					endif
				endif
			endif				

			if $teamplayer6_id != -1
				$len = GetPlayerDistance( -1 , $teamplayer6_id )	
				$Map6 = GetPlayerInfo( $teamplayer6_id, "mapid" )
				if $Map6 == $ectype_ID			
					if $len <= 60
						AddPlayerInfo($teamplayer6_id, "prestige", 44, 80)
			     			DropMonsterItems($teamplayer6_id, $drop_id1 )
					endif
				endif
			endif
		endif					
			
			
}												