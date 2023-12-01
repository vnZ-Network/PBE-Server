 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/17
	//		Author:???
	//		TaskName:ITEM-Explor-suijijuanzhou-63302.s
	//		TaskID:????63302
	//****************************************
	
	function OnUseItem(){
		
		$n = RandomNumber ( 1, 10 )
		
		$mapid = GetPlayerInfo( -1, "mapid")
		if $mapid != 186
			BC( "screen", "player", -1, "The item is available only in Outer Starway." )
			return
		endif
	//--------------------	
		if $n == 1
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,63, 61 )
		endif
	//--------------------	
		if $n == 2
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,61, 63 )
		endif
	//--------------------		
		if $n == 3
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,54, 83 )
		endif
	//--------------------		
		if $n == 4
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,72, 80 )
		endif
	//--------------------		
		if $n == 5
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,78, 65 )
		endif
	//--------------------		
		if $n == 6
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,80, 59 )
		endif
	//--------------------		
		if $n == 7
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,69, 48 )
		endif
	//--------------------		
		if $n == 8
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,49, 55 )
		endif
	//--------------------	
		if $n == 9
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,57, 47 )
		endif
	//--------------------	
		if $n == 10
			$info = SubPlayerInfo ( -1 , "item" , 63302 , 1 )
			if  $info != 0
				return
			endif
			FlyToMap( -1 , 186 ,45, 66 )
		endif
	//--------------------		
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
	}