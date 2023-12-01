	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/13
	//		Author:???
	//		TaskName:?????????
	//		TaskID:VIP-Return-zuanshi-44372.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 201 202 203
		
	$item_0 = 44372
	$item_1 = 44080
	$item_2 = 59557
	$item_3 = 64402
	$item_4 = 59311
	$item_5 = 59325

	
	//???????
	$is_get_1 = GetPlayerVar(-1, 201)
	$is_get_2 = GetPlayerVar(-1, 202)
	$is_get_3 = GetPlayerVar(-1, 203)

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
	if $null < 5
		BC("screen","player",-1,"You must have at least 5 free bag spaces.")
		BC("chat","player",-1,"You must have at least 5 free bag spaces.")		
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif

  //??????
  SetPlayerVar(-1, 203, 1)
  	
	//????
	AddPlayerInfo(-1, "item", $item_1, 10)
	AddPlayerInfo(-1, "item", $item_2, 3)
	AddPlayerInfo(-1, "item", $item_3, 10)
	AddPlayerInfo(-1, "item", $item_4, 5)
	AddPlayerInfo(-1, "item", $item_5, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a Carnival Returner Diamond Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Carnival Returner Diamond Pack.")	
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )		
	
}