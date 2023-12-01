	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/26
	//		Author:???
	//		TaskName:ITEM-59118.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif			
		$info = SubPlayerInfo ( -1 , "item" , 59118 , 1 )
		if  $info != 0
			return
		endif
		$level = GetPlayerInfo( -1, "level" )
		if $level > 89
			$n = RandomNumber ( 1, 2 ) 
			if $n == 1
				AddPlayerInfo( -1, "item", 4943, 1 )
				BC( "screen", "player", -1, " was lucky enough to receive an Adornment Fortify Stone!" )
			endif
		endif
		DropMonsterItems( -1 , 90034 )
		
	}

