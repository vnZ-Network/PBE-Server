	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/22
	//		Author:??
	//		TaskName:Hero2-item-59069.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$result = HaveTitle( -1 , 21 )
		if $result != 0
			BC( "screen", "player", -1, "You must reach level 70 and get the 'Deity' title to open [Apotheosis Pack]." )
			return
		endif
		$lv = GetPlayerInfo ( -1 , "level" )
		if $lv < 70
			BC( "screen", "player", -1, "You must reach level 70 and get the 'Deity' title to open [Apotheosis Pack]." )
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 8
			BC( "screen", "player", -1, "You must have at least 8 free bag spaces to open the pack." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 59069 , 1 )
		if $nfo != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 64410 , 1 )
		AddPlayerInfo( -1 , "item" , 2147 , 1 )
		AddPlayerInfo( -1 , "item" , 2211 , 1 )
	//????,??????
		$profession = GetPlayerInfo( -1 , "profession" )
		if $profession == 1
			AddPlayerInfo( -1 , "item" , 5959 , 5 )
		endif
		if $profession == 2
			AddPlayerInfo( -1 , "item" , 5959 , 5 )
		endif
		if $profession == 3
			AddPlayerInfo( -1 , "item" , 5959 , 5 )
		endif
		if $profession == 4
			AddPlayerInfo( -1 , "item" , 5960 , 5 )
		endif
		if $profession == 5
			AddPlayerInfo( -1 , "item" , 5960 , 5 )
		endif
		
	}

