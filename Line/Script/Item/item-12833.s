	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:item-12833.s
	//		TaskID:
	//
	//****************************************

	function OnUseItem(){
		
		//???????
		$nullitem = GetPlayerInfo( -1, "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "There is not enough space in your bag." )
			return
		endif
		
		$a = GetPlayerInfo( -1,"item",12833 )
		$b = GetPlayerInfo( -1,"item",12834 )		
		
		if $a < 1
			BC("screen","player",-1,"You don't have a Spinning Needle.")
			return
		endif
		
		if $b < 1
			BC("screen","player",-1,"You don't have an Enchanted Bowl")
			return
		endif
		
		
		$result1 = SubPlayerInfo( -1 , "item" , 12833 , 1 )
		if $result1 != 0
			return
		endif
		
		$result2 = SubPlayerInfo( -1 , "item" , 12834 , 1 )
		if $result != 0
			return
		endif
		
		if $result1 == 0
			if $result2 != 0
				AddPlayerInfo(-1,"item",12833,1)
			endif
		endif
		
		if $result1 != 0
			if $result2 == 0
				AddPlayerInfo(-1,"item",12834,1)
			endif
		endif
		
		if $result1 == 0
			if $result2 == 0
				AddPlayerInfo(-1,"item",12835,1)
			endif
		endif
		
	}
				
