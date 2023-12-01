	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/28
	//		Author:???
	//		TaskName:?????????
	//		TaskID:VIP-Crazy-zuanshi-44375.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 204	205  206
	//??id ???? 44067 ?? 44068 ?? 44069          
	//??id ????? 2487 
	//??id ??????? 2450
	//??id ???? 6667
	//??id ???? 6668 
	//??id ??? 60029
		
	$item_0 = 44375
	$item_1 = 2487
	$item_2 = 2450
	$item_3 = 6680
	$item_4 = 6682
	$item_5 = 60029
	$item_6 = 5632
	
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
	if $null < 6
		BC("screen","player",-1,"You must have at least 6 free bag spaces.")
		BC("chat","player",-1,"You must have at least 6 free bag spaces.")		
		return
	endif
	
//	$null1 = GetPlayerInfo(-1, "nullitem", 1)
//	if $null1 < 1
//		BC("screen","player",-1,"GUID:07680000008")
//		BC("chat","player",-1,"GUID:07680000009")		
//		return
//	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif
	
  //??????
  SetPlayerVar(-1, 206, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 2)
	AddPlayerInfo(-1, "item", $item_2, 2)
	AddPlayerInfo(-1, "item", $item_3, 1)
	AddPlayerInfo(-1, "item", $item_4, 1)
	AddPlayerInfo(-1, "item", $item_5, 20)
	AddPlayerInfo(-1, "item", $item_6, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a Carnival Feast Diamond Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Carnival Feast Diamond Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
	
	
}	