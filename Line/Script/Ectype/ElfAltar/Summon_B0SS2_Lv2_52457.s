	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/7
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：死亡后召回BOSS1Lv2型
	//		TaskID：Summon_B0SS2_Lv2_52457.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 541

		$ectype_id = GetEctypeID(-1, 541)
		$BOSS = 52386

		DeleteMonster($ectype_id,52385)
		DeleteMonster($ectype_id,52428)
		DeleteMonster($ectype_id,52465)
		
		AddMonsterByFloat($BOSS,1,$ectype_id,167,240,1,0,0)		
		
		
	}