	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/10/13
	//		Author:???
	//		TaskName:44102-Item-XunyouCarnival.s
	//		TaskID:???????
	//
	//****************************************



	function OnUseItem(){
	//???? ?? 173 	
	// ????? 59839
	// ????? 2211
	// ?????? 9



	$exclusive = GetPlayerVar(-1, 173)
	$item_id = 44102
	$item_3ji = 59839
	$item_xiangqian = 2211
	$item_qianghua = 9
		
		if $exclusive == 1
			BC( "screen", "player", -1, "N/A ?????????????????,??????!" )
			BC( "chat", "player", -1, "N/A ?????????????????,??????!" )
			return
		endif			
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You must have at least 2 free bag spaces." )
			BC( "chat", "player", -1, "You must have at least 2 free bag spaces." )
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
		
		AddPlayerInfo(-1, "item", $item_3ji, 6 )
		AddPlayerInfo(-1, "item", $item_xiangqian, 6)
		AddPlayerInfo(-1, "item", $item_qianghua, 20)
		
		BC("screen", "player",-1, "N/A????????????????????,??????!")
		BC("chat", "player",-1, "N/A????????????????????,??????!")

	SetPlayerVar(-1 ,173 , 1)
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
				
}