	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/8
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：许愿池 外部火焰
	//		TaskID：52446_MagicColumn_OutsideFire.s
	//
	//****************************************
	
	function OnDead(){

		//获取变量 副本id 541

		$ectype_id = GetEctypeID(-1, 541)
		
		//内部死亡需要判断外部有没有死，如果外部死了，则重生
		
		SetEctypeVar($ectype_id,73,1)

		
		
	}