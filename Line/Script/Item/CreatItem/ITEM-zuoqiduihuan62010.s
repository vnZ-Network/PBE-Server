	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/15
	//		Author:???
	//		TaskName:ITEM-zuoqiduihuan62010.s
	//		TaskID:???????????
	//
	//****************************************
	
	function OnUseItem(){
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 90
			BC( "screen", "player", -1, "Level too low to proceed!" )
			return
		endif
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$revalue = SubPlayerInfo( -1, "item", 62010, 1)
		if $revalue == 0
			$pro = GetPlayerInfo( -1, "profession" )
		//1:??
		//2:??
		//3:??
		//4:??
		//5:??
			if $pro == 1
				AddPlayerInfo( -1, "item", 62011, 1 )
				BC( "screen", "player", -1, "You have acquired the Snowbear Mount!" )
				return
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 62012, 1 )
				BC( "screen", "player", -1, "You have acquired the Mammoth Mount!" )
				return
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 62013, 1 )
				BC( "screen", "player", -1, "You have acquired the Rhino Mount!" )
				return
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 62014, 1 )
				BC( "screen", "player", -1, "You have acquired the Boneoryx Mount!" )
				return
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 62015, 1 )
				BC( "screen", "player", -1, "You have acquired the Kirin Mount!" )
				return
			endif
			if $pro == 6
				AddPlayerInfo( -1, "item", 62016, 1 )
				BC( "screen", "player", -1, "You Summoned Mechanics monster." )
				return				
			endif	
		endif
		

		

		
	}