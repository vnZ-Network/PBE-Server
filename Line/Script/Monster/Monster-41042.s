	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/4
	//		Author:???
	//		TaskName:Monster-41042.s
	//		TaskID:???? 41042
	//****************************************
 
 
	function OnDead(){
	
	//-----------?????????--------------------
		DropMonsterItems(-1, 0)
		
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		
		
		$n = RandomNumber ( 1, 1000 )
		DropMonsterItems(-1,41042)
		//---------????-------
		if $n < 10
		UseSkill(-1,8579, 1 )
		endif
		//--------??32124??------
		if $n < 100
			if $n > 80
				AddMonster (32124,1,$mapid,$x,$y,0 )
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
		endif
		//--------??32125??------
		if $n < 200
			if $n > 180
				AddMonster (32125,1,$mapid,$x,$y,0 )
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			endif
		endif
		//--------????(12???)------
		if $n < 300
			if $n > 280
				
				$m = RandomNumber ( 1, 10 )
				//--------------------	
				if $m == 1
					FlyToMap( -1 , 186 ,63, 61 )
				endif
				//--------------------	
				if $m == 2
					FlyToMap( -1 , 186 ,61, 63 )
				endif
				//--------------------		
				if $m == 3
					FlyToMap( -1 , 186 ,54, 83 )
				endif
				//--------------------		
				if $m == 4
					FlyToMap( -1 , 186 ,72, 80 )
				endif
				//--------------------		
				if $m == 5
					FlyToMap( -1 , 186 ,78, 65 )
				endif
				//--------------------		
				if $m == 6
					FlyToMap( -1 , 186 ,80, 59 )
				endif
				//--------------------		
				if $m == 7
					FlyToMap( -1 , 186 ,69, 48 )
				endif
				//--------------------		
				if $m == 8
					FlyToMap( -1 , 186 ,49, 55 )
				endif
				//--------------------	
				if $m == 9
					FlyToMap( -1 , 186 ,57, 47 )
				endif
				//--------------------	
				if $m == 10
					FlyToMap( -1 , 186 ,45, 66 )
				endif
				BC( "screen", "player", -1, "The Star Shards has triggered the spatial displacement. You have been teleported to another location." )		
			endif
		endif
			//--------????------------
		if $n < 800
			if $n > 770
				UseSkill(-1,8586,1 )
			endif
		endif
		//--------????------------
		if $n < 900
			if $n > 970
				UseSkill(-1,8584,1)
			endif
		endif
	
	}
	