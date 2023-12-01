	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/13
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2166.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$a = GetPlayerInfo( -1, "item", 63717 )

		if $a < 1
			BC( "screen", "player", -1, "You need a Golden Treasure Key" )
			return
		endif	
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 1
			BC( "screen", "player", -1, "Your bag is full" )
			return
		endif	
		
		$del = SubPlayerInfo ( -1 , "item" , 63717 , 1 )
		if  $del != 0
			return
		endif
		
		//???????,0????  1 ??
		$mode = GetEctypeVar( $ectype_id , 111 )
		//1/400???????????
		$count = GetServerVar( 147 )
		$count = $count + 1
		$rand = RandomNumber ( 0 , 399 )
		$lv = GetPlayerInfo ( -1 , "level" )
		#name = GetPlayerInfo( -1 , "name" )
		//if $mode == 1
		//	if $count <= 10
		//		if $lv >= 90
		//			if $rand < 4
		//				AddPlayerInfo( -1 ,"item", 59256 , 1 )
		//				BC("screen", "servergroup", -1, "The hero ",#name, "GUID:04336000003" )
		//				BC("chat", "servergroup", -1, "The hero ",#name, "GUID:04336000005" )
		//				SetServerVar( 147 , $count )
		//				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		//				return
		//			endif
		//		endif
		//	endif
		//endif
		
		
		
		
		$n = RandomNumber ( 0 , 9999 )
		if $n < 2000
			AddPlayerInfo( -1 ,"item", 65346 , 1 )	
			BC( "screen", "map", $ectype_id, "The hero ",#name, " unlocked the King's Treasure in Shadow Manor and gained unknown treasure (Anubis' Judgment)" )
			BC( "chat", "map", $ectype_id, "The hero ",#name, " unlocked the King's Treasure in Shadow Manor and gained unknown treasure (Anubis' Judgment)" )
		endif
		
		if $n < 3000
			if $n >= 2000
				AddPlayerInfo( -1 ,"item", 63718 , 1 )
			endif
		endif
		if $n < 5000
			if $n >= 3000
				AddPlayerInfo( -1 ,"item", 63719 , 1 )	
			endif
		endif
		
		if $n < 6000
			if $n >= 5000
				AddPlayerInfo( -1 ,"item", 63720 , 1 )	
			endif
		endif
		
		if $n >= 6000
			AddPlayerInfo( -1 ,"item", 63721 , 1 )	
		endif
		
		//if $n >= 7000
		//	AddPlayerInfo( -1 ,"item", 63722 , 1 )	
		//endif
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		
		
		DeleteNPC(2166 , $ectype_id)
		
	}