	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Milya-Ectype-Npc-403.s
	//		TaskID: ?? ????? ???2
	//
	//****************************************
	
	function OnRequest(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		$Accept = IsTaskAccept( -1 , 135 )
		if $Accept != 0
			return
		endif
		$a = GetEctypeVar( $ectype_id , 2 )
		$b = GetEctypeVar( $ectype_id , 3 )
		$c = GetEctypeVar( $ectype_id , 4 )
		$d = GetEctypeVar( $ectype_id , 5 )
		
		if $a == 0
			BC( "screen", "player", -1, "There is an order to remove the seal." )	
			return
		endif
		
		if $b == 1
			BC( "screen", "player", -1, "You have already removed the seal of Stone of Souls." )	
			return
		endif
		NPCAction( -1 , 403 , open , 0 )
		BC( "screen", "player", -1, "You removed the seal of Stone of Souls.")
		SetEctypeVar( $ectype_id , 3 , 1 )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		
		
		
	}
	

	
	