	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-08-11
	//		Author:???
	//		TaskName:
	//		TaskID:38093????(???)
	//****************************************
	
	function OnUseItem(){
		
		  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		  //??????????
		  if $bag_count < 1
			  BC( "screen", "player", -1, "Insufficient space in your bag." )
			  return
		  endif
		  
		  //??1?????
		  $count = GetPlayerInfo( -1, "item", 38093 )
		  if $count < 1
			  return
		  endif
		 //????
		  $level = GetPlayerInfo( -1 , "level" ) 
		  if $level < 120
		    BC( "screen", "player", -1, "You need to be LV120 to identify that." )
		    return
		  endif
		  
		  //??????
		  $result = SubPlayerInfo( -1, "item", 38093, 1 )
		  if $result != 0
			  return
		  endif
		
      $profession = GetPlayerInfo( -1, "profession" )
        if $profession == 1
			  AddPlayerInfo( -1, "item", 38079, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 2
			  AddPlayerInfo( -1, "item", 38080, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 3
			  AddPlayerInfo( -1, "item", 38081, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 4
			  AddPlayerInfo( -1, "item", 38082, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 5
			  AddPlayerInfo( -1, "item", 38083, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 6
			  AddPlayerInfo( -1, "item", 38084, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif		
      
	}