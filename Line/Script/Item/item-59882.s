	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-08-03
	//		Author:???
	//		TaskName:
	//		TaskID:59882??????
	//****************************************
	
	function OnUseItem(){
		
		  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		  //??????????
		  if $bag_count < 1
			  BC( "screen", "player", -1, "Insufficient space in your bag." )
			  return
		  endif
		  
		  //??1?????
		  $count = GetPlayerInfo( -1, "item", 59882 )
		  if $count < 5
			  BC( "screen", "player", -1, "Not enough Oracle Set Charm Fragments!" )
			  return
		  endif
		
		  //??????
		  $result = SubPlayerInfo( -1, "item", 59882, 5 )
		  if $result != 0
			  return
		  endif
		
      $profession = GetPlayerInfo( -1, "profession" )
        if $profession == 1
			  AddPlayerInfo( -1, "item", 37730, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 2
			  AddPlayerInfo( -1, "item", 37731, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 3
			  AddPlayerInfo( -1, "item", 37732, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 4
			  AddPlayerInfo( -1, "item", 37733, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 5
			  AddPlayerInfo( -1, "item", 37734, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 6
			  AddPlayerInfo( -1, "item", 37803, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif		
      
	}