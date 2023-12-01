	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/20
	//		Author:(qxk??)??
	//		TaskName:ITEM-sanxingwanbangvipka-59052.s
	//		TaskID:5???VIP?59054
	//
	//****************************************
	
	function OnUseItem(){
		$sex = GetPlayerInfo( -1, "sex" )
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$count = GetPlayerInfo( -1, "item", 59054 )
		if $count < 12
			BC( "screen", "player", -1, "N/A????5???VIP???12?!" )
			return
		endif
	
		$del_count = SubPlayerInfo( -1, "item", 59054, 12 )
		//????????
		if $del_count == 0
			
			//-------------------------------------------------------------------------------------------------
				if $sex == 0
					AddPlayerInfo( -1, "item", 36475, 1 )
				else   
					AddPlayerInfo( -1, "item", 36474, 1 )
				endif
		endif
		
	}
