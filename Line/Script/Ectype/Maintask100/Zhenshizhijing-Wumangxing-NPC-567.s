	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Wumangxing-NPC-567.s
	//		TaskID:???NPC5
	//
	//****************************************
	
	function OnRequest(){
	
		$posX = GetPlayerInfo( -1, "mapposx" )
		$posY = GetPlayerInfo( -1, "mapposx" )
		if $posX < 200
			if $posX > 213
				BC( "screen", "player", "-1", "Hey, you're too far away from me, get closer" )
				return
			endif
		endif
		
		if $posY < 146
			if $posY > 160
				BC( "screen", "player", "-1", "Hey, you're too far away from me, get closer" )
				return
			endif
		endif
		
		$ectype_ID = GetEctypeID( -1 , 253 )	
		$isCharge = GetEctypeVar( $ectype_ID, 0 )
		if $isCharge != 1
			BC( "screen", "player", "-1", "Without charging, there is no effect for the stone" )
			return
		endif
		
		$switch = GetEctypeVar( $ectype_ID, 5 )
		if $switch != 1
			BC( "screen", "player", "-1", "You have clicked the stone" )
			return
		endif
		
		$varIndex = GetEctypeVar( $ectype_ID, 115 )
		$positionNumber = GetEctypeVar( $ectype_ID, $varIndex )
		
		if $positionNumber != 5
			
			$error = GetEctypeVar( $ectype_ID, 116 )
			if $error == 0
				BC( "screen", "player", "-1", "Wrong once, 2 tries left" )
				SetEctypeVar( $ectype_ID, 116, 1 )
			endif
			
			if $error == 1
				BC( "screen", "player", "-1", "Wrong twice, 1 try left" )
				SetEctypeVar( $ectype_ID, 116, 2 )
			endif
			
			if $error == 2
				BC( "screen", "player", "-1", "Wrong 3 times, please restart" )
				SetEctypeVar( $ectype_ID, 110, 0 )
				SetEctypeVar( $ectype_ID, 111, 0 )
				SetEctypeVar( $ectype_ID, 112, 0 )
				SetEctypeVar( $ectype_ID, 113, 0 )
				SetEctypeVar( $ectype_ID, 114, 0 )
				SetEctypeVar( $ectype_ID, 115, 0 )
				SetEctypeVar( $ectype_ID, 116, 0 )
				SetEctypeVar( $ectype_ID, 0, 0 )
				SetEctypeVar( $ectype_ID, 1, 0 )
				SetEctypeVar( $ectype_ID, 2, 0 )
				SetEctypeVar( $ectype_ID, 3, 0 )
				SetEctypeVar( $ectype_ID, 4, 0 )
				SetEctypeVar( $ectype_ID, 5, 0 )
			endif
			
			return
		endif
		
		$varIndex += 1
		$result = AddMonsterByFloat( 51591, 1, $ectype_ID, 202, 152, 0 )
		SetEctypeVar( $ectype_ID, 115, $varIndex )
		SetEctypeVar( $ectype_ID, 5, 0 )
		
		if $varIndex = 115
			SetTaskDone( -1, 188 )
		endif
		
	}
	
	//206 249
	//209 152
	//203 156
	//208 156
	//202 152