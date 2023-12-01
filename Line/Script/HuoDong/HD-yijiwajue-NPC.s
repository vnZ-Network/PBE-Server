	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/17
	//		Author:??
	//		TaskName:HD-yijiwajue-NPC.s
	//		TaskID:??????NPC??
	//
	//****************************************
	//3212.????
	function OnRequest(){
	
		$value = GetPlayerVar( -1, 3212 )
		if $value != 0
			DisableNpcOption(0)
		endif
		
		if $value == 1
			BC( "npctip", "player", -1, "You got a hint already, go dig in the northwest." )
		endif
		if $value == 2
			BC( "npctip", "player", -1, "You got a hint already, go dig in the northeast." )
		endif
		if $value == 3
			BC( "npctip", "player", -1, "You got a hint already, go dig in the southwest." )
		endif
		if $value == 4
			BC( "npctip", "player", -1, "You got a hint already, go dig in the southeast." )
		endif		

	}
	
	
	//????
	function OnOption0(){
		//????4?????
		$item_num = GetPlayerInfo( -1, "item", 63170)

		if $item_num == 0
			BC( "dialogbox", "player", -1, "You do not have a Shovel." )
			return
		endif
		$money = GetPlayerInfo( -1, "money")
		if $money < 100
			BC( "dialogbox", "player", -1, "Nothing comes free in this world, it'll be 100 coins for my divination. It seems that you do not have enough money though." )
			return
		endif
		//??
		SubPlayerInfo(-1 "money" , 100 )
		$n = RandomNumber ( 1, 4 )
		SetPlayerVar( -1, 3212 , $n)
		if $n == 1
			BC( "chat", "player", -1, "You can find treasure in the northwest area according to my divination." )
			BC( "dialogbox", "player", -1, "You can find treasure in the northwest area according to my divination." )
		endif
		if $n == 2
			BC( "chat", "player", -1, "You can find treasure in the northeast area according to my divination." )
			BC( "dialogbox", "player", -1, "You can find treasure in the northeast area according to my divination." )
		endif
		if $n == 3
			BC( "chat", "player", -1, "You can find treasure in the southwest area according to my divination." )
			BC( "dialogbox", "player", -1, "You can find treasure in the southwest area according to my divination." )
		endif
		if $n == 4
			BC( "chat", "player", -1, "You can find treasure in the southeast area according to my divination." )
			BC( "dialogbox", "player", -1, "You can find treasure in the southeast area according to my divination." )
		endif		
	
	}