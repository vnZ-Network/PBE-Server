	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-9-21
	//		Author:???
	//		TaskName:???-??
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		//????(30%??),1????(6%??)
		//64241	????
		//64244	?????

			$lv = GetPlayerInfo ( -1 , "level" )
			$lv2 = $lv * $lv
			$a = $lv2 * 24
			$b = $lv * 4
			$c = $b - 76
			$d = $a * $c
			$exp = $d / 800
			
			AddPlayerInfo( -1 , "exp" , $exp )
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "messagebox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$nrand = RandomNumber(0,99)
		
		if $nrand < 40
			AddPlayerInfo(-1,"item",64241,1)
			return
		endif

		if $nrand > 92
			AddPlayerInfo(-1,"item",64244,1)
			BC("screen","player",-1,"Congratulations! You got a LV1 Gem Chest.")
			return
		endif
		
		
		
	} 
		
	