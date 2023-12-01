	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Banshou3-NPC-546.s
	//		TaskID:????3
	//
	//****************************************
	
	
	function OnRequest(){
	

	}
	
	function OnOption0(){
		
		$value = GetPlayerVar( -1, 3256 )
		if $value >= 3
			BC( "screen", "player", "-1", "You have finished this part of the quest" )
			return
		endif
	
		$accept = IsTaskAccept( -1 , 188 )
		if $accept != 0
			BC( "screen", "player", "-1", "Please receive the quest Hidden Path first " )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		$isLock = GetEctypeVar( $ectype_ID, 7 )
		if $isLock == 1
			BC( "screen", "player", "-1", "Rift of Light starts" )
			return
		endif
		
		SetEctypeVar( $ectype_ID, 16, 1 )
		SetEctypeVar( $ectype_ID, 17, 2 )
		SetEctypeVar( $ectype_ID, 18, 3 )
		SetEctypeVar( $ectype_ID, 19, 4 )
		SetEctypeVar( $ectype_ID, 20, 5 )
		$n = 20
		while $n > 16
			$random = RandomNumber( 16, $n )
			$var1 = GetEctypeVar( $ectype_ID, $n )
			$var2 = GetEctypeVar( $ectype_ID, $random )
			SetEctypeVar( $ectype_ID, $n, $var2 )
			SetEctypeVar( $ectype_ID, $random, $var1 )
			$n = $n - 1
		endwhile
		$var1 = GetEctypeVar( $ectype_ID, 16 )
		$var2 = GetEctypeVar( $ectype_ID, 17 )
		$var3 = GetEctypeVar( $ectype_ID, 18 )
		$var4 = GetEctypeVar( $ectype_ID, 19 )
		$var5 = GetEctypeVar( $ectype_ID, 20 )
		
		SetEctypeVar( $ectype_ID, 7, 1 )
		SetEctypeVar( $ectype_ID, 21, 16 )
		SetEctypeVar( $ectype_ID, 22, 0 )
		SetEctypeVar( $ectype_ID, 0, 0 )
		SetEctypeVar( $ectype_ID, 39, 9 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 207, 153, 0 )
		PlaySoundToPlayer( -1, "..\Data\Audio\UI\pull_handle.wav" )
		PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_priest_guangmingzhiliao_hit.wav" )
		StartEctypeTimer( $ectype_ID, 2 )
		StartEctypeTimer( $ectype_ID, 8 )

	
	}