	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/05/24
	//		Author:??
	//		TaskName:ITEM-zhanchangbi-59302.s
	//		TaskID:????????
	//
	//****************************************
	
	function OnUseItem(){
		$money = GetPlayerBattleMoney(-1)
		if $money > 50000
			BC( "screen", "player", -1, "You have more than 50000 Battle Coins! This exchange will take your total past the 250000 maximum!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 59302, 1 )
		if $result != 0
			return
		endif
		//?????,??200000???
		AddPlayerBattleMoney(-1 , 200000)
		BC( "screen", "player", -1, "You've exchanged 200000 Battle Coin." )
	}			