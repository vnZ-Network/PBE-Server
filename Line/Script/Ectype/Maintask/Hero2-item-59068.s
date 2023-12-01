		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/22
	//		Author:??
	//		TaskName:Hero2-item-59068.s
	//		TaskID:
	//****************************************
 
	
	//??????
	function OnUseItem(){
	
	//???????????3000
		$weekliveness = GetPlayerInfo( -1 , "weekliveness")
		if $weekliveness < 3000
			BC( "screen", "player", -1, "Your weekly Zeal has not reach 3000, it can not be opened.")
			return
		endif
		
	//????????????2?
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 2
			BC( "screen", "player", -1, "You must have at least 2 free bag spaces to open the pack.")
			return
		endif
		
	//???????,????,?????
		$item = SubPlayerInfo( -1 , "item" , 59068 , 1 )
			if $item != 0
				return
			endif
			
		$weekliveness = SubPlayerInfo( -1 , "weekliveness" , 3000 )
			if $weekliveness != 0
				return
			endif
	
	//??????????
		AddPlayerInfo( -1 , "item" , 2454 , 3 )
		
		$profession = GetPlayerInfo( -1 , "profession" )
		
		if $profession == 1
			AddPlayerInfo( -1 , "item" , 53078 , 3 )
			return
		endif
		
		if $profession == 2
			AddPlayerInfo( -1 , "item" , 53084 , 3 )
			return
		endif
			
		if $profession == 3
			AddPlayerInfo( -1 , "item" , 53090 , 3 )
			return
		endif
		
		if $profession == 4
			AddPlayerInfo( -1 , "item" , 53081 , 3 )
			return
		endif
		
		if $profession == 5
			AddPlayerInfo( -1 , "item" , 53087 , 3 )
			return
		endif
	
		
	}