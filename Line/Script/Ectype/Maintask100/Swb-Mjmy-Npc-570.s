
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/23
	//		Author:???
	//		TaskName:Swb-Mjmy-Npc-570.s
	//		TaskID:  ?????
	//****************************************

	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		$Accept = IsTaskAccept( -1 , 210 )
		if $Accept != 0
			DisableNpcOption(0)
		endif
		$a = GetEctypeVar( $ectype_id , 37 )
		if $a != 0
			DisableNpcOption(0)
		endif
		
		$Accept = IsTaskAccept( -1 , 217 )
		if $Accept != 0
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		$a = GetEctypeVar( $ectype_id , 35 )
		if $a != 0
			DisableNpcOption(1)
		endif
		
		$a = GetEctypeVar( $ectype_id , 36 )
		if $a != 1
			DisableNpcOption(2)
		endif
		
	}
	
	//??????,?????
	function OnOption0(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		$Accept = IsTaskAccept( -1 , 210 )
		if $Accept != 0
			return
		endif
		
		$a = GetEctypeVar( $ectype_id , 37 )
		if $a != 0
			return
		endif
		
		AddMonsterByFloat( 51517 , 1 , $ectype_id , 149 , 135, 0 )
		SetEctypeVar( $ectype_id , 37 , 1 )
		SetPlayerVar( -1 , 58 , 1 )
		
	}
	
	//????
	function OnOption1(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		$Accept = IsTaskAccept( -1 , 217 )
		if $Accept != 0
			return
		endif
		$a = GetEctypeVar( $ectype_id , 35 )
		if $a != 0
			return
		endif
		$info = GetPlayerInfo( -1 , "item", 12779 )
		if $info < 1
			BC( "dialogbox", "player", -1, "Can't unlocked without Mjollnir, Thor's Hammer" )
			return
		endif
		AddMonsterByFloat( 51502 , 1 , $ectype_id , 144 , 129, 0 )
		DeleteNPC( 570 , $ectype_id )
		SetEctypeVar( $ectype_id , 35 , 1 )
		SetPlayerVar( -1 , 67 , 1 )
		
	}
	
	//????
	function OnOption2(){
	
		$ectype_id = GetEctypeID( -1 , 254 )
		$a = GetEctypeVar( $ectype_id , 36 )
		if $a != 1
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		AddPlayerInfo( -1, "item", 12800 , 1 )
		SetEctypeVar( $ectype_id , 36 , 2 )
		SetPlayerVar( -1 , 68 , 1 )
		DeleteNPC( 570 , $ectype_id )
		
	}
	
	