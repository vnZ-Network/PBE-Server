	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/10/28
	//		Author:???
	//		44106-Item-XunyouCarnival.s
	//		TaskID:???????
	//
	//****************************************



	function OnUseItem(){
	//???? ?? 176 	
	// ????? 59839
	// ?????? 9
	// ????? 64402
	// ?????888 59557



	$exclusive = GetPlayerVar(-1, 176)
	$item_id = 44106
	$item_exp = 64402
	$item_888 = 59557
	$item_3ji = 59839
	$item_qianghua = 9
		
		if $exclusive == 1
			BC( "screen", "player", -1, "N/A???????????????,??????!" )
			BC( "chat", "player", -1, "N/A???????????????,??????!" )
			return
		endif			
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You must have at least 3 free bag spaces." )
			BC( "chat", "player", -1, "You must have at least 3 free bag spaces." )
			return
		endif

		$mat_bag_count = GetPlayerInfo(-1, "nullitem", 1)
		if $mat_bag_count < 1
			BC( "screen", "player", -1, "You must have at least 1 free bag space." )
			BC( "chat", "player", -1, "You must have at least 1 free bag space." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", $item_id , 1 )
		//??????????
		if $del_count != 0
			return
		endif

		AddPlayerInfo(-1, "item", $item_exp, 2 )
		AddPlayerInfo(-1, "item", $item_888, 1 )
		AddPlayerInfo(-1, "item", $item_3ji, 2 )
		AddPlayerInfo(-1, "item", $item_qianghua, 10)
		
		BC("screen", "player",-1, "N/A???????????????,??????!")
		BC("chat", "player",-1, "N/A???????????????,??????!")

	SetPlayerVar(-1 ,176 , 1)
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
				
}