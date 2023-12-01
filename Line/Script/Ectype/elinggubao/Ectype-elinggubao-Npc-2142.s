	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/08
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2142.s
	//		TaskID:????????
	//
	//****************************************
	
	
	function OnRequest(){
		$b = GetEctypeVar( -1 , 42 )
		if $b != 0
			DisableNpcOption(0)
			
		endif
	}
	
	
	function OnOption0(){
		$b = GetEctypeVar( -1 , 42 )
		$ectype_id = GetEctypeID( -1 , 258 )
		$a = GetPlayerInfo( -1, "item", 63714 )
		if $a < 1
			BC( "screen", "player", -1, "Requires the Key to the Gallery." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" ,63714, 1 )
		if  $info != 0
			return
		endif
		
		OpenMask( 5 , $ectype_id )
			BC( "screen" , "map" , $ectype_id , "The Gallery has been opened." )
		SetEctypeVar( -1 , 42 , 1 )
		
	}