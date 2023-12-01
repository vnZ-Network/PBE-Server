	//****************************************	
	//		Copyright：PERFECT WORLD
	//		Modified：2012/07/18
	//		Author：李翼飞
	//		TaskName：
	//		TaskID：暑假欢乐送
	//****************************************
	function OnDead(){
		
		$rand = RandomNumber ( 1, 99 )
		
	//3%几率奖励【残卷】召唤兽技能卷轴*5
		if $rand < 3
			DropMonsterItems(-1, 90195 )
		endif
	
	//6%几率奖励高级强化水晶*5
		if $rand >= 3
			if $rand < 9
				DropMonsterItems(-1, 90196 )
			endif
		endif

	//6%几率奖励中级召唤兽强化石*5
		if $rand >= 9
			if $rand < 15
				DropMonsterItems(-1, 90197 )
			endif
		endif
	
	//85%几率奖励魅影飞龙宝箱*1
		if $rand >= 15
		 DropMonsterItems(-1, 90194 )
		endif
	}

	
	//以下为旧脚本	
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/06
	//		Author：黄晨
	//		TaskName：
	//		TaskID：魅影撒大礼（采集怪）
	//****************************************
//	function OnDead(){
		
//		$rand = RandomNumber ( 1, 10000 )
		
	//1/10000几率奖励双人坐骑魅影飞龙
//		if $rand == 600
//			DropMonsterItems(-1, 90099 )
//			return
//		endif
	
	//高级强化水晶×5
//		if $rand < 600
//			DropMonsterItems(-1, 90098 )		
//			return
//		endif
	
	//大杂包
//		DropMonsterItems(-1, 90096 )
//	}	