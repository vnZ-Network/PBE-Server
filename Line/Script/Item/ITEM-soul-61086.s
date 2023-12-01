	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/25
	//		Author:???
	//		TaskName:ITEM-soul-61086.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
	
		$no_bag = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $no_bag < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		$x = GetPlayerInfo( -1, "item",61086)
		if $x < 5
			BC( "screen", "player", -1, "You need 5 Medium Soulcrystal Fragments to do that." )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 61086 , 5 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 61083 , 1 )
		
	}