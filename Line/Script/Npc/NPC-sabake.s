	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/11
	//		Author:???
	//		TaskName:NPC-sabake.s
	//		TaskID:1551 ????????
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	//???????
	
	function OnOption0(){
	
		//???????????
		$count = GetPlayerInfo( -1, "item", 64251)
		if $count < 20
			BC( "dialogbox", "player", -1, "You need 20 Cold Steel Book Pages." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64251, 20 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64256, 1 )

	}
	
	//???????
	
	function OnOption1(){
	
		//???????????
		$count = GetPlayerInfo( -1, "item", 64252)
		if $count < 20
			BC( "dialogbox", "player", -1, "You need 20 Frost Flare Book Pages." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64252, 20 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64257, 1 )

	}
	
	//???????
	
	function OnOption2(){
	
		//???????????
		$count = GetPlayerInfo( -1, "item", 64253)
		if $count < 20
			BC( "dialogbox", "player", -1, "You need 20 Black Ice Book Pages." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64253, 20 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64258, 1 )

	}
	
	//???????
	
	function OnOption3(){
	
		//???????????
		$count = GetPlayerInfo( -1, "item", 64254)
		if $count < 20
			BC( "dialogbox", "player", -1, "You need 20 Frozen Flame Book Pages." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64254, 20 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64259, 1 )

	}
	
	//???????
	
	function OnOption4(){
	
		//???????????
		$count = GetPlayerInfo( -1, "item", 64255)
		if $count < 20
			BC( "dialogbox", "player", -1, "You need 20 Binding Void Book Pages." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64255, 20 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64260, 1 )

	}
	
		function OnOption5(){
	
		//???????????
		$count = GetPlayerInfo( -1, "item", 64298)
		if $count < 20
			BC( "dialogbox", "player", -1, "You need 20 Blinding Fire Book Pages." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64298, 20 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 64299, 1 )

	}