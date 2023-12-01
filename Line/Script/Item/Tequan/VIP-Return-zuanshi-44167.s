	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/13
	//		Author:???
	//		TaskName:???VIP??????
	//		TaskID:VIP-Return-zuanshi-44167.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 189	190  191
	//??id ???? 44063 ?? 44064 ?? 44065          
	//??id ????	44070
	//??id ????? 59557
	//??id ????? 64402
	//??id ????? 59311
	//??ID ?? 6394  ???? 6605  ???? 6668   
	//??id ??	6390 ???? 6602 ???? 6667
	//??ID ?? 9  
	//??id 2???? 59838 3???? 59839 ????? 2487 
	//??ID 2?????? 2141  3?????? 2147
		
	$item_0 = 44167
	$item_1 = 44080
	$item_2 = 59557
	$item_3 = 64402
	$item_4 = 59311
	$item_5 = 59840

	
	//???????
	$is_get_1 = GetPlayerVar(-1, 189)
	$is_get_2 = GetPlayerVar(-1, 190)
	$is_get_3 = GetPlayerVar(-1, 191)

	if $is_get_1 == 1
		BC("screen","player",-1,"You've already used an Anniversary Celebration Return Silver Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used an Anniversary Celebration Return Silver Pack. You can only use one of each type.")
		return
	endif
	
	if $is_get_2 == 1
		BC("screen","player",-1,"You've already used an Anniversary Celebration Return Platinum Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used an Anniversary Celebration Return Platinum Pack. You can only use one of each type.")
		return
	endif
	
	if $is_get_3 == 1
		BC("screen","player",-1,"You've already used an Anniversary Celebration Return Diamond Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used an Anniversary Celebration Return Diamond Pack. You can only use one of each type.")
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
  SetPlayerVar(-1, 191, 1)
  	
	//????
	AddPlayerInfo(-1, "item", $item_1, 10)
	AddPlayerInfo(-1, "item", $item_2, 3)
	AddPlayerInfo(-1, "item", $item_3, 10)
	AddPlayerInfo(-1, "item", $item_4, 5)
	AddPlayerInfo(-1, "item", $item_5, 1)

	BC("screen","player",-1,"Congratulations! You got a Anniversary Celebration Return Diamond Pack.")
	BC("chat","player",-1,"Congratulations! You got a Anniversary Celebration Return Diamond Pack.")	
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )		
	
}