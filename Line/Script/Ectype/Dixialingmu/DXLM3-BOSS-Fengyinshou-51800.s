	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479?????
	//		TaskID:DXLM3-BOSS-Fengyinshou-51800.s
	//
	//****************************************

	function OnDead(){
  	//???? ??id 479, ??????var 21-0?1??
  	$ectype_id = GetEctypeID(-1, 479)
  	
  	SetEctypeVar(-1, 21, 1)
  	
  	AddNPC(584, $ectype_id)
  	PlayEffect(0,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini")
  	
  	BC("screen", "map", $ectype_id, "You have shown your humility. Return to Chanyi to finally prove your worth.")
  	BC("chat","player",-1,"The seal of Cloudsky Seal seven soul has been removed.")
	
}