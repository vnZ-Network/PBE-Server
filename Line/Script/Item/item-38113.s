	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-11-13
	//		Author:???
	//		TaskName:
	//		TaskID:38113????(???)
	//****************************************
	
	function OnUseItem(){
		
		  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		  //??????????
		  if $bag_count < 1
			  BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			  return
		  endif
		  
		  //??1?????
		  $count = GetPlayerInfo( -1, "item", 38113 )
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
		  $result = SubPlayerInfo( -1, "item", 38113, 1 )
		  if $result != 0
			  return
		  endif
		
      $profession = GetPlayerInfo( -1, "profession" )
        if $profession == 1
			  AddPlayerInfo( -1, "item", 38100, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 2
			  AddPlayerInfo( -1, "item", 38101, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 3
			  AddPlayerInfo( -1, "item", 38102, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 4
			  AddPlayerInfo( -1, "item", 41287, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 5
			  AddPlayerInfo( -1, "item", 41288, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif
		    if $profession == 6
			  AddPlayerInfo( -1, "item", 38105, 1 )
			  BC( "screen", "player", -1, "Congratulations, successfully identified!" )
		  endif		
      
	}