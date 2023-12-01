	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:59949_Item_GoldCompass.s
	//
	//****************************************

	function OnUseItem(){


		$item = 59949
		$ectype_id = GetEctypeID(-1, 540)
		$Des_x = 98
		$Des_x_1 = 110
		$Des_y = 99
		$pos_x = GetPlayerInfo(-1, "mapposx")
		$pos_y = GetPlayerInfo(-1, "mapposy")


		//????
		if $ectype_id < 25501
			BC("screen","player",-1,"Golden Compass can only be used in the Gold Coast.")
			BC("chat","player",-1,"Golden Compass can only be used in the Gold Coast.")
			return
		endif
		if $ectype_id > 25600
			BC("screen","player",-1,"Golden Compass can only be used in the Gold Coast.")
			BC("chat","player",-1,"Golden Compass can only be used in the Gold Coast.")
			return
		endif

		if $pos_x > $Des_x
			if $pos_y > $Des_y
				BC( "screen", "map", $ectype_id, "The Golden Compass points northwest." )
				return
			endif
		endif

		if $pos_x < $Des_x
			if $pos_y > $Des_y
				BC( "screen", "map", $ectype_id, "The Golden Compass points northeast." )
				return
			endif
		endif

		if $pos_x == $Des_x
			if $pos_y > $Des_y
				BC( "screen", "map", $ectype_id, "The Golden Compass points north." )
				return
			endif
		endif

		if $pos_x < $Des_x_1
			if $pos_y < $Des_y
				$revaluet = SubPlayerInfo(-1, "item", $item, 1)
				if $revaluet != 0
					BC( "chat", "player", -1, "The Golden Compass doesn't work. Try it again." )
					return
				else
//					PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
					AddNPC(791,$ectype_id)
					OpenMask(3,$ectype_id)
				endif
			endif
		endif





}
