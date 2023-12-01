	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/04
	//		Author:???
	//		TaskName:Ectype-yilonghuangu-Npc-2056.s
	//		TaskID:?????boss
	//
	//****************************************
	//
	
	
	//????228
	//???????????       3769
	//?????????           3408
	//?????????????????ID     3810
	//??????????????   3747
	//????????   114
	//???????boss 0
	
	
	//option0  ????????
	//option1  ????
	
	
	
	function OnRequest(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		//?????????
		$max = GetEctypeVar( $ectype_ID , 114 )
		
		$ectype_var = GetEctypeVar( -1, 38 )
			
		if $ectype_var == 0
			if $max >= 30
				DisableNpcOption(1)
				DisableNpcOption(2)
				return
			endif
		else		
			if $max >= 60
				DisableNpcOption(1)
				DisableNpcOption(2)
				return
			endif
		endif
		
		//????boss?,??????
		$boss = GetEctypeVar( $ectype_ID , 115 )
		if $boss == 1
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif
		
		
	}
	
	
	//??BOSS
	function OnOption0(){
		
		//??
		$boss = GetEctypeVar( $ectype_ID , 115 )
		if $boss == 1
			return
		endif
		
		
		//????????
		$size = GetTeamAreaSize(-1)
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif
		
		
		$ectype_var = GetEctypeVar( -1, 38 )
			
		if $ectype_var == 0
			$ectype_ID = GetEctypeID( -1 , 228 )
			$max = GetEctypeVar( $ectype_ID , 114 )
			if $max < 30
				BC( "screen", "map", $ectype_ID, "Not enough Smelt Essence." , $max , "/30" )
			else				
			
				SetEctypeVar( $ectype_ID , 114 , 0 )
				$result = AddMonsterByFloat( 52640 , 1 , $ectype_ID , 113 , 114 , 0 )
				if $result == 0
					SetEctypeVar( $ectype_ID , 115 , 1 )
					BC( "screen" , "map" , $ectype_ID , "The Origin Of Pain in hell appeared, taste the pain!" )
				endif
			endif
		else
		
			$ectype_ID = GetEctypeID( -1 , 228 )
			$max = GetEctypeVar( $ectype_ID , 114 )
			if $max < 60
				BC( "screen", "map", $ectype_ID, "Not enough Smelt Essence." , $max , "/60" )
			else				
			
				SetEctypeVar( $ectype_ID , 114 , 0 )
				$result = AddMonsterByFloat( 51310 , 1 , $ectype_ID , 113 , 114 , 0 )
				if $result == 0
					SetEctypeVar( $ectype_ID , 115 , 1 )
					BC( "screen" , "map" , $ectype_ID , "The Origin Of Pain in hell appeared, taste the pain!" )
				endif
			endif
		endif
		
		
	}
	
	
	//???
	function OnOption1(){
		
		$itemcount = GetPlayerInfo( -1 , "item" , 59179 )
		if $itemcount == 0
			BC( "dialogbox" , "player" , -1 , "Are you kidding me? You do not have enough Smelt Essence." )
			return
		endif
		
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		//?????????
		$max = GetEctypeVar( $ectype_ID , 114 )
		
		//??????
		$ectype_var = GetEctypeVar( -1, 38 )
			
		if $ectype_var == 0
			//??????,???
			$n = 0
			$maxcount = 0
			while $n < 6
				$teamplayer_id = GetTeamMemberID( -1 , $n )
				$n = $n + 1
				if $teamplayer_id > 0
					$myitem = GetPlayerInfo( $teamplayer_id , "item" , 59179 )
					$maxcount = $maxcount + $myitem
				endif
			endwhile
			
			$need = 30 - $max
			
			//????60
			if $maxcount < $need
				BC( "dialogbox" , "player" , -1 , "Your party doesn't have 30 Smelt Essences. Come challenge Origin Of Pain next time!" )
				return
			endif
			
			
			
			if $max <= 29
				$result = SubPlayerInfo( -1 , "item" , 59179 , 1 )
				if $result == 0
					$max = $max + 1
					SetEctypeVar( $ectype_ID , 114 , $max )
					//????+1
					$mycount = GetPlayerVar( -1 , 3747 )
					$mycount = $mycount + 1
					SetPlayerVar( -1 , 3747 , $mycount )
					#name = GetPlayerInfo( -1 , "name" )
					BC( "screen" , "map" , $ectype_ID , #name , " contributed 1 Smelt Essence. " , $max , " / 30"  )
				endif	
			else
				BC( "dialogbox" , "player" , -1 , "I have enough Smelt Essence, I can challenge the Origin Of Pain " )
			endif
		else
		
			//??????,???
			$n = 0
			$maxcount = 0
			while $n < 6
				$teamplayer_id = GetTeamMemberID( -1 , $n )
				$n = $n + 1
				if $teamplayer_id > 0
					$myitem = GetPlayerInfo( $teamplayer_id , "item" , 59179 )
					$maxcount = $maxcount + $myitem
				endif
			endwhile
			
			$need = 60 - $max
			
			//????60
			if $maxcount < $need
				BC( "dialogbox" , "player" , -1 , "Your party doesn't have 60 Smelt Essences. Come challenge Origin Of Pain next time!" )
				return
			endif
			
			
			
			if $max <= 59
				$result = SubPlayerInfo( -1 , "item" , 59179 , 1 )
				if $result == 0
					$max = $max + 1
					SetEctypeVar( $ectype_ID , 114 , $max )
					//????+1
					$mycount = GetPlayerVar( -1 , 3747 )
					$mycount = $mycount + 1
					SetPlayerVar( -1 , 3747 , $mycount )
					#name = GetPlayerInfo( -1 , "name" )
					BC( "screen" , "map" , $ectype_ID , #name , " contributed 1 Smelt Essence. " , $max , " / 60"  )
				endif	
			else
				BC( "dialogbox" , "player" , -1 , "I have enough Smelt Essence, I can challenge the Origin Of Pain " )
			endif
		endif
	
	}
	
	
	//?10?
	function OnOption2(){
		
		$itemcount = GetPlayerInfo( -1 , "item" , 59179 )
		if $itemcount < 10
			BC( "dialogbox" , "player" , -1 , "Are you kidding me? You do not have enough Smelt Essence." )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		//?????????
		$max = GetEctypeVar( $ectype_ID , 114 )
		
		//??????
		$ectype_var = GetEctypeVar( -1, 38 )
			
		if $ectype_var == 0
		
			//??????,???
			$n = 0
			$maxcount = 0
			while $n < 6
				$teamplayer_id = GetTeamMemberID( -1 , $n )
				$n = $n + 1
				if $teamplayer_id > 0
					$myitem = GetPlayerInfo( $teamplayer_id , "item" , 59179 )
					$maxcount = $maxcount + $myitem
				endif
			endwhile
			
			$need = 30 - $max
			
			//????120
			if $maxcount < $need
				BC( "dialogbox" , "player" , -1 , "Your party doesn't have 30 Smelt Essences. Come challenge Origin Of Pain next time!" )
				return
			endif
			
			
			if $max <= 20
				$result = SubPlayerInfo( -1 , "item" , 59179 , 10 )
				if $result == 0
					$max = $max + 10
					SetEctypeVar( $ectype_ID , 114 , $max )
					//????+10
					$mycount = GetPlayerVar( -1 , 3747 )
					$mycount = $mycount + 10
					SetPlayerVar( -1 , 3747 , $mycount )
					#name = GetPlayerInfo( -1 , "name" )
					BC( "screen" , "map" , $ectype_ID , #name , " contributed 10 Smelt Essence. " , $max , " / 30"  )
				endif	
			else
				BC( "dialogbox" , "player" , -1 , "I do not need so many Smelt Essence." )
			endif
		else
		
			//??????,???
			$n = 0
			$maxcount = 0
			while $n < 6
				$teamplayer_id = GetTeamMemberID( -1 , $n )
				$n = $n + 1
				if $teamplayer_id > 0
					$myitem = GetPlayerInfo( $teamplayer_id , "item" , 59179 )
					$maxcount = $maxcount + $myitem
				endif
			endwhile
			
			$need = 60 - $max
			
			//????60
			if $maxcount < $need
				BC( "dialogbox" , "player" , -1 , "Your party doesn't have 60 Smelt Essences. Come challenge Origin Of Pain next time!" )
				return
			endif
			
			
			if $max <= 50
				$result = SubPlayerInfo( -1 , "item" , 59179 , 10 )
				if $result == 0
					$max = $max + 10
					SetEctypeVar( $ectype_ID , 114 , $max )
					//????+10
					$mycount = GetPlayerVar( -1 , 3747 )
					$mycount = $mycount + 10
					SetPlayerVar( -1 , 3747 , $mycount )
					#name = GetPlayerInfo( -1 , "name" )
					BC( "screen" , "map" , $ectype_ID , #name , " contributed 10 Smelt Essence. " , $max , " / 60"  )
				endif	
			else
				BC( "dialogbox" , "player" , -1 , "I do not need so many Smelt Essence." )
			endif
		endif
	
	}
	
	
	//??????,???60?
	function OnOption3(){
	
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem == 0
			BC( "dialogbox" , "player" , -1 , "Your bag is full." )
			return
		endif
			
		
		$mycount = GetPlayerVar( -1 , 3747 )
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		//?????????
		$max = GetEctypeVar( $ectype_ID , 114 )
		
		if $mycount > $max
			return
		endif
		
		if $mycount <= 60
			SetPlayerVar( -1 , 3747 , 0 )
			AddPlayerInfo( -1 , "item" , 59179 , $mycount )
			$max = $max - $mycount
			SetEctypeVar( $ectype_ID , 114 , $max )
		else
			$mycount = $mycount - 60
			SetPlayerVar( -1 , 3747 , $mycount )
			AddPlayerInfo( -1 , "item" , 59179 , 60 )
			$max = $max - 60
			SetEctypeVar( $ectype_ID , 114 , $max )
		endif
		
		
	}