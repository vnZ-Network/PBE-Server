	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????51801
	//		TaskID:DXLM3-BOSS-Duoluojian-51801.s
	//
	//****************************************

	function OnDead(){
  	//???? ??id 479, ??????var 43-0?1?2?,??NPC ????628 ????629, ???51826,????51827
  	$ectype_id = GetEctypeID(-1, 479)
  	$jian1_id = 628
  	$jian2_id = 629
		$n = GetEctypeVar(-1, 43)
  	
  	$n = $n + 1
  	SetEctypeVar(-1, 43, $n)
  	
  	DeleteNPC($jian1_id, $ectype_id)
  	AddNPC($jian2_id, $ectype_id)
  	
  	BC("screen", "map", $ectype_id, "The Pangaea Spirit has been defeated!")
  	BC("screen", "map", $ectype_id, "The seal on the Pangaea Sword has been broken.")
  	BC("chat","player",-1,"The seal of Pangaea's Sword was removed.")
  	PlayEffect(0,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini")
  	
  	//??
  	AddMonsterByFloat(51826, 1, $ectype_id, 263, 71, 0)
  	
  	AddMonsterByFloat(51827, 1, $ectype_id, 255, 67, 0)
  	AddMonsterByFloat(51827, 1, $ectype_id, 255, 74, 0)
  	AddMonsterByFloat(51827, 1, $ectype_id, 259, 79, 0)
  	AddMonsterByFloat(51827, 1, $ectype_id, 266, 79, 0)
  	AddMonsterByFloat(51827, 1, $ectype_id, 271, 74, 0)
  	AddMonsterByFloat(51827, 1, $ectype_id, 271, 67, 0)
  	AddMonsterByFloat(51827, 1, $ectype_id, 266, 63, 0)
  	AddMonsterByFloat(51827, 1, $ectype_id, 259, 63, 0)
  	
	
}