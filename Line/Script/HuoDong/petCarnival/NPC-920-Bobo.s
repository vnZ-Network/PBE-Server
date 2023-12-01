	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-9
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
//10?????????????
//????????????????
//????????????????

//44456	?????
//44457	?????

	function OnRequest(){
		
	}
	
	function OnOption0(){
		
		$nullitem = GetPlayerInfo(-1,"nullitem",0)
		if $nullitem < 1
			BC("dialogbox","player",-1,"Insufficient bag slots!")
			return
		endif
		
		$itemN = GetPlayerInfo(-1,"item",44456)
		if $itemN < 10
			BC("dialogbox","player",-1,"You don't have 10 Ymir's Flowers in your bag!")
		endif
		$res = SubPlayerInfo(-1,"item",44456,10)
		if $res == 0
			AddPlayerInfo(-1,"item",44457,1)
			BC("messagebox","player",-1,"You've refined Ymir Holy Water!")
		endif
		
	}
	
	function OnOption1(){
		
		$clever = GetBattlePetInfo(-1,"clever")
		if $clever < 0
			BC("dialogbox","player",-1,"You didn't summon a Pet!")
			return
		endif
		if $clever == 9
			BC("dialogbox","player",-1,"Your Pet Fortify level is 9. Continuing to upgrade its Fortify level requires the Ymir Holy Water.\nYmir's Flower can only be used to upgrade Pets under Fortify LV9.\nYmir Holy Water can only be used to upgrade Pets of Fortify LV9.")
			return
		endif
		if $clever > 9
			BC("dialogbox","player",-1,"Your Pet Fortify level is too high.\nYmir's Flower can only be used to upgrade Pets under Fortify LV9.\nYmir Holy Water can only be used to upgrade Pets of Fortify LV9.")
			return
		endif
		$itemN = GetPlayerInfo(-1,"item",44456)
		if $itemN < 1
			BC("dialogbox","player",-1,"Please give me a Ymir's Flower!")
		endif
		$res = SubPlayerInfo(-1,"item",44456,1)
		if $res == 0
			$clever += 1
			$result = SetBattlePetInfo(-1,"clever",$clever)
			if $result == 0
				BC("chat","player",-1,"Fortify successful. Upgrade Pet Fortify LV to",$clever,"LV")
				BC("messagebox","player",-1,"Fortify successful. Upgrade Pet Fortify LV to",$clever,"LV")
			else
				BC("dialogbox","player",-1,"Pet Fortification unsuccessful.")
			endif
		endif
	
	}
	
	function OnOption2(){
		
		$clever = GetBattlePetInfo(-1,"clever")
		if $clever < 0
			BC("dialogbox","player",-1,"You didn't summon a Pet!")
			return
		endif
		if $clever < 9
			BC("dialogbox","player",-1,"Your Pet Fortify level is under 9. Cannot use Ymir Holy Water to fortify your Pet.\nYmir's Flower can only be used to upgrade Pets under Fortify LV9.\nYmir Holy Water can only be used to upgrade Pets of Fortify LV9.")
			return
		endif
		if $clever > 9
			BC("dialogbox","player",-1,"Your Pet Fortify level is too high.\nYmir's Flower can only be used to upgrade Pets under Fortify LV9.\nYmir Holy Water can only be used to upgrade Pets of Fortify LV9.")
			return
		endif
		$itemN = GetPlayerInfo(-1,"item",44457)
		if $itemN < 1
			BC("dialogbox","player",-1,"Please give me a Ymir's Holy Water!")
		endif
		$res = SubPlayerInfo(-1,"item",44457,1)
		if $res == 0
			$clever += 1
			$result = SetBattlePetInfo(-1,"clever",$clever)
			if $result == 0
				BC("chat","player",-1,"Fortify successful. Upgrade Pet Fortify LV to",$clever,"LV")
				BC("messagebox","player",-1,"Fortify successful. Upgrade Pet Fortify LV to",$clever,"LV")
			else
				BC("dialogbox","player",-1,"Pet Fortification unsuccessful.")
			endif
		endif
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	