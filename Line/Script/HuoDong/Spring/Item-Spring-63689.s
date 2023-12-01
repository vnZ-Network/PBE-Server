	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/01/22
	//		Author：杨海勇
	//		TaskName：Item-Spring-63689.s
	//		TaskID：
	//
	//****************************************
	
	function OnUseItem(){
	
		
		//删除消耗物品
		$result = SubPlayerInfo( -1, "item", 63689 , 1 )
		if $result == 0
			
			$mapid = GetPlayerInfo( -1 , "mapid" ) 
			$x = GetPlayerInfo( -1 , "mapx" )
			$y = GetPlayerInfo( -1 , "mapy" )
			
			$random = RandomNumber( 1 , 90 )
			
			if $random >= 1
				if $random <= 30
					AddMonster( 32211 , 1 , $mapid , $x , $y , 1 )
				endif
			endif
			
			if $random >= 31
				if $random <= 60
					AddMonster( 32212 , 1 , $mapid , $x , $y , 1 )
				endif
			endif
			
			if $random >= 61
				if $random <= 90
					AddMonster( 32213 , 1 , $mapid , $x , $y , 1 )
				endif
			endif
			
		endif
	}