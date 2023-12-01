	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/14
	//		Author:???
	//		TaskName:??????
	//		TaskID:VIP-Crazy-gaoji-44530.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 280	281  282
	
		
	$item_0 = 44530
	$item_1 = 2487
	$item_2 = 2450
	$item_3 = 6667
	$item_4 = 6668
	$item_5 = 60029
	
	//???????
	$is_get_1 = GetPlayerVar(-1, 280)
	$is_get_2 = GetPlayerVar(-1, 281)
	$is_get_3 = GetPlayerVar(-1, 282)
	if $is_get_1 == 1
		BC("screen","player",-1,"You've already used a Winter's Warmth Standard Joy Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used a Winter's Warmth Standard Joy Pack. You can only use one of each type.")
		return
	endif
	
	if $is_get_2 == 1
		BC("screen","player",-1,"You've already used a Winter's Warmth Deluxe Joy Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used a Winter's Warmth Deluxe Joy Pack. You can only use one of each type.")
		return
	endif
	
	if $is_get_3 == 1
		BC("screen","player",-1,"You've already used a Winter's Warmth Supreme Joy Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used a Winter's Warmth Supreme Joy Pack. You can only use one of each type.")
		return
	endif
	
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 5
		BC("screen","player",-1,"You must have at least 5 free bag spaces.")
		BC("chat","player",-1,"You must have at least 5 free bag spaces.")		
		return
	endif
	
//	$null1 = GetPlayerInfo(-1, "nullitem", 1)
//	if $null1 < 1
//		BC("screen","player",-1,"GUID:07676000008")
//		BC("chat","player",-1,"GUID:07676000009")		
//		return
//	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif
	
  //??????
  SetPlayerVar(-1, 281, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 1)
	AddPlayerInfo(-1, "item", $item_2, 1)
	AddPlayerInfo(-1, "item", $item_3, 1)
	AddPlayerInfo(-1, "item", $item_4, 1)
	AddPlayerInfo(-1, "item", $item_5, 5)

	BC("screen","player",-1,"Congratulations, you have obtained a Winter's Warmth Deluxe Joy Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Winter's Warmth Deluxe Joy Pack.")			
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
	
}