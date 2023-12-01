	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:ITEM-jiaodoushi-63499.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
		
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		
		if $Now_Year != 2009
			BC( "screen", "player", -1, "Incorrect date" )
			return
		endif
		if $Now_Month > 9
			BC( "screen", "player", -1, "Incorrect date" )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 15
			BC( "chat", "player", -1, "You need at least 15 empty bag slots!" )
			return
		endif
        //------------------------------------------------------
		AddPlayerInfo(-1 , "item" ,63506 , 1 )
		AddPlayerInfo(-1 , "item" ,63507 , 1 )         			
		
		$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
			AddPlayerInfo( -1, "item", 19806, 1 )
 		    AddPlayerInfo( -1, "item", 38106, 1 )
 		    AddPlayerInfo( -1, "item", 38206, 1 )
 		    AddPlayerInfo( -1, "item", 38306 ,1 )
 		    AddPlayerInfo( -1, "item", 38406, 1 )
 		    AddPlayerInfo( -1, "item", 38506, 1 )
 		    AddPlayerInfo( -1, "item", 38606, 1 )
 		    AddPlayerInfo( -1, "item", 38706, 1 )
 		    
 		    AddPlayerInfo( -1, "item", 35055, 2 )
 		    AddPlayerInfo( -1, "item", 35655, 1 )
 		    AddPlayerInfo( -1, "item", 35955, 1 )
		endif
		if $pro == 2
			AddPlayerInfo( -1, "item", 19826, 1 )
 		    AddPlayerInfo( -1, "item", 38126, 1 )
 		    AddPlayerInfo( -1, "item", 38226, 1 )
 		    AddPlayerInfo( -1, "item", 38326, 1 )
 		    AddPlayerInfo( -1, "item", 38426, 1 )
 		    AddPlayerInfo( -1, "item", 38526, 1 )
 		    AddPlayerInfo( -1, "item", 38626, 1 )
 		    AddPlayerInfo( -1, "item", 38726, 1 )
 		    AddPlayerInfo( -1, "item", 38926, 1 )
 		    
 		    AddPlayerInfo( -1, "item", 35055, 2 )
 		    AddPlayerInfo( -1, "item", 35655, 1 )
 		    AddPlayerInfo( -1, "item", 35955, 1 )
		
		endif
		if $pro == 3
			AddPlayerInfo( -1, "item", 19846, 1 )
 		    AddPlayerInfo( -1, "item", 38146, 1 )
 		    AddPlayerInfo( -1, "item", 38246, 1 )
 		    AddPlayerInfo( -1, "item", 38346 ,1 )
 		    AddPlayerInfo( -1, "item", 38446, 1 )
 		    AddPlayerInfo( -1, "item", 38546, 1 )
 		    AddPlayerInfo( -1, "item", 38646, 1 )
 		    AddPlayerInfo( -1, "item", 38746, 1 )
 		    
 		    AddPlayerInfo( -1, "item", 35055, 2 )
 		    AddPlayerInfo( -1, "item", 35655, 1 )
 		    AddPlayerInfo( -1, "item", 35955, 1 )
	
		endif
		if $pro == 4
			AddPlayerInfo( -1, "item", 19866, 1 )
 		    AddPlayerInfo( -1, "item", 38166, 1 )
 		    AddPlayerInfo( -1, "item", 38266, 1 )
 		    AddPlayerInfo( -1, "item", 38366 ,1 )
 		    AddPlayerInfo( -1, "item", 38466, 1 )
 		    AddPlayerInfo( -1, "item", 38566, 1 )
 		    AddPlayerInfo( -1, "item", 38666, 1 )
 		    AddPlayerInfo( -1, "item", 38766, 1 )
 		    
 		    AddPlayerInfo( -1, "item", 35355, 2 )
 		    AddPlayerInfo( -1, "item", 35655, 1 )
 		    AddPlayerInfo( -1, "item", 35955, 1 )
	
		endif
		if $pro == 5
			AddPlayerInfo( -1, "item", 19886, 1 )
 		    AddPlayerInfo( -1, "item", 38186, 1 )
 		    AddPlayerInfo( -1, "item", 38286, 1 )
 		    AddPlayerInfo( -1, "item", 38386 ,1 )
 		    AddPlayerInfo( -1, "item", 38486, 1 )
 		    AddPlayerInfo( -1, "item", 38586, 1 )
 		    AddPlayerInfo( -1, "item", 38686, 1 )
 		    AddPlayerInfo( -1, "item", 38786, 1 )
 		    AddPlayerInfo( -1, "item", 38986, 1 )
 		    
 		    AddPlayerInfo( -1, "item", 35355, 2 )
 		    AddPlayerInfo( -1, "item", 35655, 1 )
 		    AddPlayerInfo( -1, "item", 35955, 1 )
		
		endif	
		
		
	}