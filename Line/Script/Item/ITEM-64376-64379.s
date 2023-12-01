	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:ITEM-64376-64379.s
	//		TaskID:??
	//****************************************
	
	function OnUseItem(){
		
		$no_bag = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $no_bag < 1
			BC( "screen", "player", -1 , "Insufficient bag slots!")
			return
		endif
		$a = GetPlayerInfo ( -1 , "item" , 64376 )
		$b = GetPlayerInfo ( -1 , "item" , 64379 )
		$c = $a + $b
		if $a >= 5
			$info = SubPlayerInfo ( -1 , "item" , 64376 , 5 )
			if  $info != 0
				return
			endif
			AddPlayerInfo( -1 , "item" , 64377 , 1 )
			return
		else
			if $b >= 5
				$info = SubPlayerInfo ( -1 , "item" , 64379 , 5 )
				if  $info != 0
					return
				endif
				AddPlayerInfo( -1 , "item" , 64377 , 1 )
				return
			else
				if $c >= 5
					$d = 5 - $a
					$info = SubPlayerInfo ( -1 , "item" , 64376 , $a )
					if  $info != 0
						return
					endif
					$info = SubPlayerInfo ( -1 , "item" , 64379 , $d )
					if  $info != 0
						return
					endif
					AddPlayerInfo( -1 , "item" , 64377 , 1 )
					return
				else
					BC( "screen", "player", -1 , "You don't have sufficient Medium Fashion Essences.")
				endif
			endif
		endif
		
		
		
		
		
	}

