	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/7
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：死亡后召回BOSS1Lv3型
	//		TaskID：Summon_B0SS3_Lv2_52458.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 541

		$ectype_id = GetEctypeID(-1, 541)
		$BOSS = 52390
		$BOSS1 = 52475
		$BOSS2 = 52476

		DeleteMonster($ectype_id,52389)
		DeleteMonster($ectype_id,52428)
		DeleteMonster($ectype_id,52468)
		
		AddMonsterByFloat($BOSS,1,$ectype_id,78,103,1,0,60)		
		AddMonsterByFloat($BOSS1,1,$ectype_id,73,106,1,0,180)		
		AddMonsterByFloat($BOSS2,1,$ectype_id,72,99,1,0,300)		
		
		
	}