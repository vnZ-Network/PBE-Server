	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7/25
	//		Author���콨��
	//		TaskName��Monster-53212.s
	//		TaskID�� 3.70����
	//
	//****************************************
	
	function OnDead(){
		
		$istask = IsTaskAccept(-1,361)
		$daoju = GetPlayerInfo(-1,"item",12863)
		$daoju1 = GetPlayerInfo(-1,"item",12864)
		if $istask == 0
			if $daoju < 1
				if $daoju1 < 1
					$n = RandomNumber(0,100)
					if $n < 10
						AddPlayerInfo(-1,"item",12863,1)
					endif
				endif
			endif
		endif
		
	}