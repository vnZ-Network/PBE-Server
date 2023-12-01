 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/15
	//		Author:???
	//		TaskName:ITEM-AV-SB-64333.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$a = GetPlayerInfo( -1 , "prestige" , 9 )
		if $a < 2500
			BC( "screen", "player", -1, "Your Expedition Reputation has increased.",$a,". Activation available at 2500 points" )
			return
		endif
		$nullitem = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $nullitem < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 64333 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1, "item" , 6185 , 4 )
	}