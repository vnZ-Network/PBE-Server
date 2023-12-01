 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/15
	//		Author:???
	//		TaskName:ITEM-molizhihuansuipian-63306.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level")
		$a = GetPlayerInfo( -1, "item", 63306 )
		
		$nullitem = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $nullitem < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		if $a < 20
			BC( "screen", "player", -1, "You need 20 Arcane Fingerband Fragments!" )
			return
		endif
		if $level < 60
			BC( "screen", "player", -1, "You cannot use Arcane Fingerband Fragment until LV 60." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" ,63306, 20 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1, "item" ,63305, 1 )
		BC( "screen", "player", -1, "You have acquired Arcane Fingerband!" )
		
	}