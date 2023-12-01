	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/14
	//		Author:???
	//		TaskName:Item-40081.s
	//		TaskID:1?????
	//
	//****************************************
	
	function OnUseItem(){
	//------------??ID-------------
		$NewItem0 = 40081
		//---?????ID-------
		
		$NewItem1 = 64021
		//---???ID------
		
		$NewItem2 = 19211
		//---?????-----
		
		$NewItem3 = 19215
		//---?????(?)----
		
		$Random0 = 21
		//---?????---
	
	//------------??????-----------	
		$item0 = GetPlayerInfo( -1, "item", $NewItem0 )
		if $item0 < 1
			BC( "screen", "player", -1, "Sorry! You do not have the item." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", $NewItem1 )
		if $item1 < 1
			BC( "screen", "player", -1, "Sorry! You do not have a LV1 Identify Scroll." )
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
		$Random = RandomNumber( 1, 100 )
		if $Random < $Random0
			AddPlayerInfo( -1, "item", $NewItem3, 1 )
			return
		else
			AddPlayerInfo( -1, "item", $NewItem2, 1 )
			return
		endif
			
	}