	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/17
	//		Author:???(??,??,??)
	//		TaskName:VIP????????
	//		TaskID:VIP-Yongzheguilai-44063.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 164	165  166
	//??id ???? 44063 ?? 44064 ?? 44065          
	//??id ????	44070
	//??id ????? 59557
	//??id ????? 64402
	//??id ????? 59311
		
	$item_0 = 44063
	$item_1 = 44080
	$item_2 = 59557
	$item_3 = 64402
	$item_4 = 59840

	
	//???????
	$is_get_1 = GetPlayerVar(-1, 164)
	$is_get_2 = GetPlayerVar(-1, 165)
	$is_get_3 = GetPlayerVar(-1, 166)
	if $is_get_1 == 1
		BC("screen","player",-1,"You have already used a Carnival Returner Silver Pack.")
		BC("chat","player",-1,"You have already used a Carnival Returner Silver Pack.")
		return
	endif
	
	if $is_get_2 == 1
		BC("screen","player",-1,"You have already used a Carnival Returner Platinum Pack.")
		BC("chat","player",-1,"You have already used a Carnival Returner Platinum Pack.")
		return
	endif
	
	if $is_get_3 == 1
		BC("screen","player",-1,"You have already used a Carnival Returner Diamond Pack.")
		BC("chat","player",-1,"You have already used a Carnival Returner Diamond Pack.")
		return
	endif
	
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 4
		BC("screen","player",-1,"You must have at least 4 free bag spaces.")
		BC("chat","player",-1,"You must have at least 4 free bag spaces.")		
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif
	
  //??????
  SetPlayerVar(-1, 164, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 10)
	AddPlayerInfo(-1, "item", $item_2, 1)
	AddPlayerInfo(-1, "item", $item_3, 2)
	AddPlayerInfo(-1, "item", $item_4, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a Carnival Returner Silver Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Carnival Returner Silver Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}