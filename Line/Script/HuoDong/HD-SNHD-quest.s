	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/03/05
	//		Author：刘晓璐
	//		TaskName：HD-SNHD-quest.s
	//		TaskID：苏宁乐翻天
	//
	//****************************************
	
	
	function OnTaskDone(){

		$level = GetPlayerInfo( -1, "level" )
		$Task0 = GetPlayerVar( -1, 3217 )
		//经验奖励公式为：跑环经验＝（人物等级^2+100）*（1+当前环数*5）/ 10
		$a = $level * $level
		$b = $a + 100
		$c = $Task0 * 5
		$d = $c + 1
		$e = $b * $d

		//计算奖励的经验
		$add_exp = $e / 10
		//给予奖励
		AddPlayerInfo( -1, "exp", $add_exp )
		
		if $Task0 == 5
			AddPlayerInfo( -1, "item", 64263, 1 )
			return
		endif
				
		//解除任务锁定
		SetPlayerVar( -1, 15, 0)
		//环数增加
		$Task0 = $Task0 + 1
		SetPlayerVar( -1 , 3217 , $Task0 )
	}