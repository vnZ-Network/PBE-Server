	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/28
	//		Author:???
	//		TaskName:?????????
	//		TaskID:VIP-Crazy-baiying-44373.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 204	205  206
	//??id ???? 44373 ???? 44374 ???? 44375          
	
		
	$item_0 = 44373
	$item_1 = 2487
	$item_2 = 2450
	$item_3 = 6667
	
	//???????
	$is_get_1 = GetPlayerVar(-1, 204)
	$is_get_2 = GetPlayerVar(-1, 205)
	$is_get_3 = GetPlayerVar(-1, 206)
	if $is_get_1 == 1
		BC("screen","player",-1,"You have already used a Carnival Feast Silver Pack.")
		BC("chat","player",-1,"You have already used a Carnival Feast Silver Pack.")
		return
	endif
	
	if $is_get_2 == 1
		BC("screen","player",-1,"You have already used a Carnival Feast Platinum Pack.")
		BC("chat","player",-1,"You have already used a Carnival Feast Platinum Pack.")
		return
	endif
	
	if $is_get_3 == 1
		BC("screen","player",-1,"You have already used a Carnival Feast Diamond Pack.")
		BC("chat","player",-1,"You have already used a Carnival Feast Diamond Pack.")
		return
	endif
	
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 3
		BC("screen","player",-1,"You must have at least 3 free bag spaces.")
		BC("chat","player",-1,"You must have at least 3 free bag spaces.")		
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif
	
  //??????
  SetPlayerVar(-1, 204, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 1)
	AddPlayerInfo(-1, "item", $item_2, 1)
	AddPlayerInfo(-1, "item", $item_3, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a Carnival Feast Silver Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Carnival Feast Silver Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}