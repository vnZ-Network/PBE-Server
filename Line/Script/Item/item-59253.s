	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-08-03
	//		Author:???
	//		TaskName:
	//		TaskID:59253??????
	//****************************************
	
	function OnUseItem(){
		
		  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		  //??????????
		  if $bag_count < 1
			  BC( "screen", "player", -1, "Insufficient space in your bag." )
			  return
		  endif
		  
		  //??1?????
		  $count = GetPlayerInfo( -1, "item", 59253 )
		  if $count < 5
			  BC( "screen", "player", -1, "Not enough Oracle Set Necklace Fragments!" )
			  return
		  endif
		
		  //??????
		  $result = SubPlayerInfo( -1, "item", 59253, 5 )
		  if $result != 0
			  return
		  endif
		
      $profession = GetPlayerInfo( -1, "profession" )
        if $profession == 1
			  AddPlayerInfo( -1, "item", 37725, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 2
			  AddPlayerInfo( -1, "item", 37726, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 3
			  AddPlayerInfo( -1, "item", 37727, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 4
			  AddPlayerInfo( -1, "item", 37728, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 5
			  AddPlayerInfo( -1, "item", 37729, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 6
			  AddPlayerInfo( -1, "item", 37802, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif		
      
	}