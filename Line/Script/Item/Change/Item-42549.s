	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/08
	//		Author:???
	//		TaskName:Item-42549.s
	//		TaskID:9?????
	//
	//****************************************
	
	function OnUseItem(){
	//------------??ID-------------
		$NewItem0 = 42549
		//---?????ID-------
		
		$NewItem1 = 64029
		//---???ID------
		
		$NewItem2 = 35391
		//---?????-----
		
	//------------??????-----------	
		$item0 = GetPlayerInfo( -1, "item", $NewItem0 )
		if $item0 < 1
			BC( "screen", "player", -1, "Sorry! You do not have the item." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", $NewItem1 )
		if $item1 < 1
			BC( "screen", "player", -1, "Sorry, you don't have a LV9 Identify Scroll!" )
			return
		endif
		
		$count = GetPlayerInfo( -1, "nullitem", 0 )
		if $count < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
	//-------------????--------------
		$Sub0 = SubPlayerInfo( -1, "item", $NewItem0, 1 )
		if $Sub0 != 0
			return
		endif
		
		$Sub1 = SubPlayerInfo( -1, "item", $NewItem1, 1 )
		if $Sub1 != 0
			return
		endif	
	//-------------????-------------
		AddPlayerInfo( -1, "item", $NewItem2, 1 )
			
	}