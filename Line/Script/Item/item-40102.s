	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-01-08
	//		Author:???
	//		TaskName:
	//		TaskID:40102????????
	//****************************************
	
	function OnUseItem(){
		  //????? 40102
		  //????? 59253
		  $bangding = 40102
		  $feibang = 59253
		  //??????????
		  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		  //??????????
		  if $bag_count < 1
			  BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			  return
		  endif
		  
		  //??1?????
		  $count1 = GetPlayerInfo( -1, "item", $bangding )
		  $count2 = GetPlayerInfo( -1, "item", $feibang )
		  $profession = GetPlayerInfo( -1, "profession" )
		  if $count1 >= 5
			  $revalue = SubPlayerInfo( -1, "item", $bangding, 5 )
			  if $revalue == 0 
				//??????
				  if $profession == 1
			      AddPlayerInfo( -1, "item", 40110, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 2
			      AddPlayerInfo( -1, "item", 40111, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 3
			      AddPlayerInfo( -1, "item", 40112, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 4
			      AddPlayerInfo( -1, "item", 40113, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 5
			      AddPlayerInfo( -1, "item", 40114, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 6
			      AddPlayerInfo( -1, "item", 40115, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif		
				 return
			 endif			
		 else
			 $n = 5 - $count1
			 if $count2 >= $n
				 $revalue1 = SubPlayerInfo( -1, "item", $bangding, $count1 )
				 $revalue2 = SubPlayerInfo( -1, "item", $feibang, $n )
				 if $revalue1 == 0
					 if $revalue2 == 0
						 //??????
						 if $profession == 1
			      AddPlayerInfo( -1, "item", 40110, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 2
			      AddPlayerInfo( -1, "item", 40111, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 3
			      AddPlayerInfo( -1, "item", 40112, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 4
			      AddPlayerInfo( -1, "item", 40113, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 5
			      AddPlayerInfo( -1, "item", 40114, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif
		        if $profession == 6
			      AddPlayerInfo( -1, "item", 40115, 1 )
			      BC( "screen", "player", -1, "Congratulations, it was successfully combined!" )
		      endif		
					return					
				 endif
				endif
			 endif
			 BC( "screen", "player", -1, "Insufficient bound Oracle Amulet Fragments!" )
			 return
		 endif
      
	}