	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/14
	//		Author:???
	//		TaskName:??????
	//		TaskID:VIP-Crazy-zhongji-44529.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 280	281  282      
	
		
	$item_0 = 44529
	$item_1 = 6668
	$item_2 = 2450
	$item_3 = 6667
	
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
  SetPlayerVar(-1, 280, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 1)
	AddPlayerInfo(-1, "item", $item_2, 1)
	AddPlayerInfo(-1, "item", $item_3, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a Winter's Warmth Standard Joy Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Winter's Warmth Standard Joy Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}