	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Statue-NPC-558.s
	//		TaskID:???????8
	//
	//****************************************
	
	
	function OnRequest(){
	
		$accept = IsTaskAccept( -1 , 196 )
		if $accept != 0
			DisableNpcOption(0)
		endif
	}
	
	function OnOption0(){
	
		$ectype_id = GetEctypeID( -1 , 253 )
		$isLock = GetEctypeVar( $ectype_id, 7 )
		$value = GetPlayerVar( -1, 3258 )
		$player_id = GetPlayerID()
		SetEctypeVar( $ectype_id, 114, $player_id )
		
		if $isLock == 1
			BC( "screen", "player", "-1", "Statue is cooling down" )
			return
		endif
		if $value == 5
			BC( "screen", "player", "-1", "You have completed the quest" )
			return
		endif
		
		if $value == 0
			SetEctypeVar( $ectype_id, 14, 1 )
			SetEctypeVar( $ectype_id, 32, 558 )
			SetPlayerVar( -1, 3258, 1 )
			SetEctypeVar( $ectype_id, 8, 8 )
			SetEctypeVar( $ectype_id, 39, 1 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 95, 214, 0 )
			StartEctypeTimer( $ectype_id, 4 )
		endif
		if $value == 1
			SetEctypeVar( $ectype_id, 14, 1 )
			SetEctypeVar( $ectype_id, 32, 558 )
			SetPlayerVar( -1, 3258, 2 )
			SetEctypeVar( $ectype_id, 8, 8 )
			SetEctypeVar( $ectype_id, 39, 1 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 95, 214, 0 )
			StartEctypeTimer( $ectype_id, 4 )
		endif
		if $value == 2
			SetEctypeVar( $ectype_id, 14, 1 )
			SetEctypeVar( $ectype_id, 32, 558 )
			SetPlayerVar( -1, 3258, 3 )
			SetEctypeVar( $ectype_id, 8, 8 )
			SetEctypeVar( $ectype_id, 39, 1 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 95, 214, 0 )
			StartEctypeTimer( $ectype_id, 4 )
		endif
		if $value == 3
			SetEctypeVar( $ectype_id, 14, 1 )
			SetEctypeVar( $ectype_id, 32, 558 )
			SetPlayerVar( -1, 3258, 4 )
			SetEctypeVar( $ectype_id, 8, 8 )
			SetEctypeVar( $ectype_id, 39, 1 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 95, 214, 0 )
			StartEctypeTimer( $ectype_id, 4 )
		endif
		if $value == 4
			SetEctypeVar( $ectype_id, 14, 1 )
			SetEctypeVar( $ectype_id, 32, 558 )
			SetPlayerVar( -1, 3258, 5 )
			SetEctypeVar( $ectype_id, 8, 8 )
			SetEctypeVar( $ectype_id, 39, 1 )
			AddMonsterByFloat( 51596, 1, $ectype_id, 95, 214, 0 )
			StartEctypeTimer( $ectype_id, 4 )
		endif
		
		SetEctypeVar( $ectype_id, 7, 1 )
		//??CD
		StartEctypeTimer( $ectype_id, 7 )
		
	}