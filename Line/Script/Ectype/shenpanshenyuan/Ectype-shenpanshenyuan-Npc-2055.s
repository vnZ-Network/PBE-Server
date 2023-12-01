	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/04
	//		Author:???
	//		TaskName:Ectype-yilonghuangu-Npc-2055.s
	//		TaskID:??TD
	//
	//****************************************
	//
	
	
	//????228
	//???????????       3769
	//?????????           3408
	//?????????????????ID     3810
	
	
	//option0  ????????
	//option1  ????
	
	
	
	function OnRequest(){
		
		
	}
	
	
	//??TD
	function OnOption0(){
		
		//????
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can start the ceremony." )
			return
		endif
		
		
		//????????
		$size = GetTeamAreaSize(-1)
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		$ectype_var = GetEctypeVar( -1, 38 )
		
		if $ectype_var == 0
			//????BOSS
			AddMonster( 52633 , 1 , $ectype_ID , 42 , 42 , 0 )
			BC( "screen" , "map" , $ectype_ID , "Latamantis: The human can pass my judgment. Let me show you the final judgment!" )
			
			OpenMask( 3 , $ectype_ID )
			
			//??????
			DeleteMonster( $ectype_ID , 52638 )
			$result = DeleteNPC( 2055 , -1 )
			
		else
		
		
			//?????????????
			$nn = 0
			while $nn < 6
				$teamplayer_id = GetTeamMemberID( -1 , $nn )
				$nn = $nn + 1
				$nullitem = GetPlayerInfo( $teamplayer_id , "nullitem" , 0 )
				if $nullitem == 0
					#name = GetPlayerInfo( $teamplayer_id , "name" )
					BC( "dialogbox", "player", -1, #name , "Your bag is full. Make some space and I can give you some very helpful Holy Bombs." )
					return
				endif
			endwhile
			
			//?????????
			$np = 0
			while $np < 6
				$teamplayer_id = GetTeamMemberID( -1 , $np )
				$np = $np + 1
				$itemcount = GetPlayerInfo( $teamplayer_id , "item" , 6900 )
				$result = SubPlayerInfo( $teamplayer_id , "item" , 6900 , $itemcount )
			endwhile	
			
			
			//??4?????
			
			$result = DeleteNPC( 2055 , -1 )
			
			//????NPC??
			if $result == 0
				//????TD??????20
				$ectype_ID = GetEctypeID( -1 , 228 )
				SetEctypeTDString( $ectype_ID , "ui_td_shenyuan" )
				SetEctypeTDNumber( $ectype_ID , 257 , 60 )
				BC( "screen" , "map" , $ectype_ID , "A large number of monsters will appear at the east portal in 10 seconds." )
				AddMonster( 51330 , 1 , $ectype_ID , 44 , 44 , 0 )
				CloseMask( 3 , $ectype_ID )
				
				$n = 0
				while $n < 6
					$teamplayer_id = GetTeamMemberID( -1 , $n )
					$n = $n + 1
					//-----------------------------
					//????????????1????
					//-------------------------------------------------------------------------------------1?
					if $teamplayer_id != -1
						AddPlayerInfo( $teamplayer_id , "item" , 6900 , 10 )
						BC( "screen" , "player" , $teamplayer_id , "Use the Holy Bombs to attack the ghosts!" )
					endif
				endwhile
			endif
			
		endif
		
	}