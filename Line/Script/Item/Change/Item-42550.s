	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/13
	//		Author:???
	//		TaskName:Item-42550.s
	//		TaskID:10?????
	//
	//****************************************
	
	function OnUseItem(){
	//------------??ID-------------
		$NewItem0 = 42550
		//---?????ID-------
		
		$NewItem1 = 64030
		//---???ID------
		
		$NewItem2 = 35401
		//---?????-----
		
	//------------??????-----------	
		$item0 = GetPlayerInfo( -1, "item", $NewItem0 )
		if $item0 < 1
			BC( "screen", "player", -1, "Sorry! You do not have the item." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", $NewItem1 )
		if $item1 < 1
			BC( "screen", "player", -1, "Sorry, you don't have a LV10 Identify Scroll!" )
			return
		endif
		
		$count = GetPlayerInfo( -1, "nullitem", 0 )
		if $count < 1
			BC( "screen", "player", -1, "Sorry, your Bag is full." )
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