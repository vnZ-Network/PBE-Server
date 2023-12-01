	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/11
	//		Author:??
	//		TaskName:HD-shengjisongli-level10.s
	//		TaskID:????????-10???
	//
	//****************************************
	
	function OnUseItem(){
	 
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 10
			BC( "chat", "player", -1, "You must open the chest above level 10." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "chat", "player", -1, "You need at least 1 empty Bag slot!" )
			return
		endif
		
    //------------------------------------------------------
		//????????
		$vip_id = GetRookieCardID(-1) 
		
		$getvar284 = GetPlayerVar(-1,284)
		if $getvar284 == 1
			$vip_id = 1801
		endif
		
		//????????  	
		if $vip_id == 1801
			if $bag_count < 7
				BC( "chat", "player", -1, "You need at least 7 empty Bag slots!" )
				return
			endif
			$del_count = SubPlayerInfo( -1, "item", 63025, -1 )
			//??????????
			if $del_count != 0
				return
			endif
			AddPlayerInfo(-1 , "exp" ,2400 )
			$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 39270, 1 ) 
				AddPlayerInfo( -1, "item", 39271, 1 ) 
				AddPlayerInfo( -1, "item", 39266, 1 )
				AddPlayerInfo( -1, "item", 35019, 1 )
				AddPlayerInfo( -1, "item", 35619, 1 ) 
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 39273, 1 ) 
				AddPlayerInfo( -1, "item", 39277, 1 ) 
				AddPlayerInfo( -1, "item", 39278, 1 )
				AddPlayerInfo( -1, "item", 35019, 1 )
				AddPlayerInfo( -1, "item", 35619, 1 ) 
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 39281, 1 ) 
				AddPlayerInfo( -1, "item", 39285, 1 ) 
				AddPlayerInfo( -1, "item", 39286, 1 )
				AddPlayerInfo( -1, "item", 35019, 1 )
				AddPlayerInfo( -1, "item", 35619, 1 ) 
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 39288, 1 ) 
				AddPlayerInfo( -1, "item", 39292, 1 ) 
				AddPlayerInfo( -1, "item", 39293, 1 )
				AddPlayerInfo( -1, "item", 35319, 1 )
				AddPlayerInfo( -1, "item", 35619, 1 ) 
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 39295, 1 ) 
				AddPlayerInfo( -1, "item", 39299, 1 ) 
				AddPlayerInfo( -1, "item", 39300, 1 )
				AddPlayerInfo( -1, "item", 35319, 1 )
				AddPlayerInfo( -1, "item", 35619, 1 ) 
			endif	
			if $pro == 6
				AddPlayerInfo( -1, "item", 39303, 1 ) 
				AddPlayerInfo( -1, "item", 39307, 1 ) 
				AddPlayerInfo( -1, "item", 39308, 1 )
				AddPlayerInfo( -1, "item", 39319, 1 )
				AddPlayerInfo( -1, "item", 35619, 1 ) 
			endif
			#name = GetPlayerInfo(-1 , "name")
			BC( "screen", "server", -1 ,"Inductee ",#name , " has opened their Beginner's Mega Pack and received an Inductee Set." ) 
      //?????????
			AddPlayerInfo( -1, "item", 63026, 1 )
			//64293	????
			AddPlayerInfo( -1, "item", 64293, 1 )
		else
			$del_count = SubPlayerInfo( -1, "item", 63025, -1 )
			//??????????
			if $del_count != 0
				return
			endif
    	//?????????
			//?????????
			AddPlayerInfo( -1, "item", 63026, 1 )
			//64293	????
			AddPlayerInfo( -1, "item", 64293, 1 )
		endif      		
	}