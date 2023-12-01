	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/18
	//		Author:???
	//		TaskName:ITEM-4656.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$no_bag = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $no_bag < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		$x = GetPlayerInfo( -1, "item", 4656 )
		if $x < 10
			BC( "screen", "player", -1, "You need 10 Dew Drops to make the Morning Dew!" )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 4656 , 10 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 4655 , 1 )
		
	}