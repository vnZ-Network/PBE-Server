	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/7
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：死亡后召回BOSS1Lv3型
	//		TaskID：Summon_B0SS1_Lv3_52381.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 541

		$ectype_id = GetEctypeID(-1, 541)
		$BOSS = 52383

		DeleteMonster($ectype_id,52427)
		DeleteMonster($ectype_id,52428)
		DeleteMonster($ectype_id,52463)
		
		AddMonsterByFloat($BOSS,1,$ectype_id,216,80,1,0,60)		
		
		
	}