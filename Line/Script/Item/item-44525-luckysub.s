
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/11/12
	//		Author：
	//		TaskName：
	//		TaskID：
	//
	//****************************************

	
	function OnUseItem(){
	

//1:战士 8034
//2:骑士 8164
//3:剌客 8266
//4:法师 8335
//5:牧师 8433
//6:召唤师 12052
			$getpro = GetPlayerInfo(-1,"profession")
			if $getpro == 1
				$result = LearnSkill(-1,8034,1,1)
			endif
			if $getpro == 2
				$result = LearnSkill(-1,8164,1,1)
			endif
			if $getpro == 3
				$result = LearnSkill(-1,8266,1,1)
			endif
			if $getpro == 4
				$result = LearnSkill(-1,8335,1,1)
			endif
			if $getpro == 5
				$result = LearnSkill(-1,8433,1,1)
			endif
			if $getpro == 6
				$result = LearnSkill(-1,12052,1,1)
			endif
			if $result == 0
				$result = SubPlayerInfo(-1,"item",44525,1)
			endif
		
		
	}
	
	