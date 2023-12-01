	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-08-03
	//		Author:???
	//		TaskName:
	//		TaskID:59252??????
	//****************************************
	
	function OnUseItem(){
		
		  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		  //??????????
		  if $bag_count < 1
			  BC( "screen", "player", -1, "Insufficient space in your bag." )
			  return
		  endif
		  
		  //??1?????
		  $count = GetPlayerInfo( -1, "item", 59252 )
		  if $count < 5
			  BC( "screen", "player", -1, "Not enough Oracle Set Ring Fragments!" )
			  return
		  endif
		
		  //??????
		  $result = SubPlayerInfo( -1, "item", 59252, 5 )
		  if $result != 0
			  return
		  endif
		
      $profession = GetPlayerInfo( -1, "profession" )
        if $profession == 1
			  AddPlayerInfo( -1, "item", 37715, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 2
			  AddPlayerInfo( -1, "item", 37716, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 3
			  AddPlayerInfo( -1, "item", 37717, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 4
			  AddPlayerInfo( -1, "item", 37718, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 5
			  AddPlayerInfo( -1, "item", 37719, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif
		    if $profession == 6
			  AddPlayerInfo( -1, "item", 37800, 1 )
			  BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		  endif		
      
	}