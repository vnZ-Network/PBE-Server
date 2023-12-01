//	---------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/11/01
//	--		Author:???
//	--		Class:	DEAD-baoshu.s
//	--		TaskID:??????
//	----------------------------------------------------

	function OnDead(){
		
		$nullitem0 = GetPlayerInfo( -1, "nullitem", 0)
		if $nullitem0 <= 1
			BC( "chat", "player", -1, "Make sure you have enough space in your bag.")
			BC( "screen", "player", -1, "Make sure you have enough space in your bag.")
		endif
		
		$itemget = RandomNumber ( 1, 100 )
		$itemid = 44544
		if $itemget >= 10
			$itemid = $itemid + 1
		endif
		if $itemget >= 30
			$itemid = $itemid + 1
		endif
		if $itemget >= 60
			$itemid = $itemid + 1
		endif
		if $itemget >= 70
			$itemid = $itemid + 1
		endif
		if $itemget >= 75
			$itemid = $itemid + 1
		endif
		if $itemget >= 80
			$itemid = $itemid + 1
		endif
		if $itemget >= 90
			$itemid = $itemid + 1
		endif
		if $itemget >= 95
			$itemid = $itemid + 1
		endif
		AddPlayerInfo( -1, "item", $itemid, 1 )
		
	}