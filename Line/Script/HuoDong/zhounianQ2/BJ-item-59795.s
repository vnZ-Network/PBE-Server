	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2011/04/07
	//		Author£ººú±óÌÎ
	//		TaskName£ºÇ®´ü
	//		TaskID£º
	//
	//****************************************
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1, "level")
		$rand = RandomNumber( 100, 225 )
		$result = SubPlayerInfo( -1 , "item" , 59795 , 1 )
		if $result != 0
			return
		endif
		
		$mon = 150
		$mongg = 150
		$mon = $mon * $rand
		
//		BC( "chat", "player", -1, "1==" , $lv )
//		BC( "chat", "player", -1, "4==" , $mon )

		if $lv < 30
			AddPlayerInfo( -1, "money", $mon)
			return
		endif
		
		$mon = $mon * $mongg
		$mon = $mon / 100
			
		if $lv < 45
			AddPlayerInfo( -1, "money", $mon)
			return
		endif
		
		$mon = $mon * $mongg
		$mon = $mon / 100
		
		if $lv < 60
			AddPlayerInfo( -1, "money", $mon)
			return
		endif
		
		$mon = $mon * $mongg
		$mon = $mon / 100
		
		if $lv < 75
			AddPlayerInfo( -1, "money", $mon)
			return
		endif
		
		$mon = $mon * $mongg
		$mon = $mon / 100
		
		if $lv < 90
			AddPlayerInfo( -1, "money", $mon)
			return
		endif
		
		$mon = $mon * $mongg
		$mon = $mon / 100
		
		if $lv < 105
			AddPlayerInfo( -1, "money", $mon)
			return
		endif
		
		
		$mon = $mon * $mongg
		$mon = $mon / 100
		AddPlayerInfo( -1, "money", $mon)
		
	}