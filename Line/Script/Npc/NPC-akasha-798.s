	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/29
	//		Author:???
	//		TaskName:NPC-akasha-798.s
	//		TaskID:??????
	//
	//****************************************
	function OnRequest(){
		
	}
  
  function OnOption0(){
  	
    $Item = GetPlayerInfo( -1, "item", 12840 )
		if $Item < 5
			BC( "dialogbox", "player", -1, "You need {#ff00ff00=5 Nightlight Stones#} to exchange for a reward!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "There is not enough space in your bag." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		if $bag_count1 < 1
			BC( "dialogbox", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		$fieldlevel = GetFieldLevel(-1)
		if $fieldlevel < 20
		  BC( "dialogbox", "player", -1, "You must be at least Exalted LV20." )
		  return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12840, 5 )
		if $SubItem == 0
		
		  //??-START
			$TJ_join_number = GetGlobalVar(887)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(887 , $TJ_join_number)
			//??-END
			
			AddPlayerInfo( -1, "item", 4902, 4 )
			AddPlayerInfo( -1, "item", 4979, 5 )
			BC( "screen", "player", -1, "Exchange successfully." )
		
		//?????
		//????? = ????^2+0.6*????+1000
		//????? = ????? * 30
		
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 30
		  AddFieldExp( -1 , $godexp )	
		  
		$random_item = RandomNumber( 1, 100 )  
		  if $random_item <= 50  
		    AddPlayerInfo( -1, "item", 59838, 1 )
		  endif
		endif
		
	}