	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/10/28
	//		Author:???
	//		TaskName:44105-Item-XunyouCarnival.s
	//		TaskID:?????????
	//
	//****************************************



	function OnUseItem(){
	//???? ?? 175	
	//????? 64402  ?????888 59557  2?????? 2141



	$exclusive = GetPlayerVar(-1, 175)
	$item_id = 44105
	$item_exp = 64402
	$item_888 = 59557
	$item_2ji = 2141
		
		if $exclusive == 1
			BC( "screen", "player", -1, "N/A???????????????,??????!" )
			BC( "chat", "player", -1, "N/A???????????????,??????!" )
			return
		endif			

		$bag_count = GetPlayerInfo(-1, "nullitem", 0)
		if $bag_count < 3
			BC( "screen", "player", -1, "You must have at least 3 free bag spaces." )
			BC( "chat", "player", -1, "You must have at least 3 free bag spaces." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", $item_id , 1 )
		//??????????
		if $del_count != 0
			return
		endif

		AddPlayerInfo(-1, "item", $item_exp, 2)
		AddPlayerInfo(-1, "item", $item_888, 1)
		AddPlayerInfo(-1, "item", $item_2ji, 1)
		
		
		BC("screen", "player",-1, "N/A????????????????????,??????!")
		BC("chat", "player",-1, "N/A????????????????????,??????!")

	SetPlayerVar(-1 ,175 , 1)
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
				
}