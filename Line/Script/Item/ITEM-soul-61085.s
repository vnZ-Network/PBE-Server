	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/25
	//		Author:???
	//		TaskName:ITEM-soul-61085.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
	
		$no_bag = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $no_bag < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		$x = GetPlayerInfo( -1, "item",61085)
		if $x < 5
			BC( "screen", "player", -1, "[Medium Soulgem Fragment] is less then 5 pieses, can not combine" )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 61085 , 5 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 61081 , 1 )
		
	}