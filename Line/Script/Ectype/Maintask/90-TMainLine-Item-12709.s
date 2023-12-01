
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/19
	//		Author:???
	//		TaskName:90-TMainLine-Item-12709.s
	//		TaskID:   ?????
	//****************************************
	
	function OnUseItem(){
		
	
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$x = GetPlayerInfo( -1 , "mapposx" )
		$y = GetPlayerInfo( -1 , "mapposy" )
		if $mapid != 245
			BC( "screen" , "player" , -1 , "The Earth Element Piece is buried in the Khufu Desert Depths." )
			return
		endif	
		if $x < 219
			BC( "screen" , "player" , -1 , "You can only find the Earth Element Piece near the entrance to Khufu Pyramid." )
			return
		endif
		if $x > 244
			BC( "screen" , "player" , -1 , "You can only find the Earth Element Piece near the entrance to Khufu Pyramid." )
			return
		endif			

		if $y < 224
			BC( "screen" , "player" , -1 , "You can only find the Earth Element Piece near the entrance to Khufu Pyramid." )
			return
		endif		
	
		if $y > 239
			BC( "screen" , "player" , -1 , "You can only find the Earth Element Piece near the entrance to Khufu Pyramid." )
			return
		endif		
		
		$random = RandomNumber(1 , 100)
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$x1 = GetPlayerInfo( -1 , "mapx" )
		$y1 = GetPlayerInfo( -1 , "mapy" )
		if $random < 30
			AddPlayerInfo( -1 , "item" , 12674 , 1 )
			SubPlayerInfo( -1, "item", 12709 , 1  )
			PlayEffect(-1,"skill\Common\zhendongguai\tx_zhendongguai_keep.ini")
			BC( "screen" , "player" , -1 , "Congratulation, you found Earth Element Piece." )
		else
			AddMonster( 55125, 1, $mapid, $x1, $y1, 1)
			PlayEffect(-1,"skill\Common\zhendongguai\tx_zhendongguai_keep.ini")
			BC( "screen" , "player" , -1 , "It is dangerous, your actions alerted the hidden ghosts...." )
		endif
	
	}