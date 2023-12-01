	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2012-9
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
//?????????
//44459	???????
//??44459???????????,?????????

	function OnRequest(){
		$year = GetSystemTime("year")
		$yday = GetSystemTime("yday")
		$time = $yday * 100
		$hour = GetSystemTime("hour")
		$time = $time + $hour
		if $year == 2012
			if $time < 29709
				DisableNpcOption(0)
			endif
		endif
		
	}
	
	function OnOption0(){
		
		$clever = GetBattlePetInfo(-1,"clever")
		if $clever < 0
			BC("dialogbox","player",-1,"You didn't summon a Pet!")
			return
		endif
		$itemN = GetPlayerInfo(-1,"item",44459)
		if $itemN < 1
			BC("dialogbox","player",-1,"Please give me a Reis' Mysterious Medicine!")
		endif
		$res = SubPlayerInfo(-1,"item",44459,1)
		if $res == 0
			$oldnature = GetBattlePetInfo(-1,"nature")
			call randomnature()
			if $nature == $oldnature
				call randomnature()
			endif
			$result = SetBattlePetInfo(-1,"nature",$nature)
			call naturename()
			if $result == 0
				BC("chat","player",-1,"Congratulations! Your Pet Mood is now ",#quality,") ")
				BC("messagebox","player",-1,"Congratulations! Your Pet Mood is now ",#quality,") ")
			else
				BC("dialogbox","player",-1,"Failed!")
			endif
		endif
		
	}
	
	function randomnature(){
		
			$randombuff = RandomNumber(1,100)
			if $randombuff == 50
				$nature = RandomNumber(6,7)
			else
				$nature = RandomNumber(0,5)
			endif
			
	}
		
	function naturename(){
		
			if $nature == 0
				#quality = "Naughty"
			endif
			if $nature == 1
				#quality = "Serious"
			endif
			if $nature == 2
				#quality = "Reckless"
			endif
			if $nature == 3
				#quality = "Excited"
			endif
			if $nature == 4
				#quality = "Cowardly"
			endif
			if $nature == 5
				#quality = "Calm"
			endif
			if $nature == 6
				#quality = "Strength"
			endif
			if $nature == 7
				#quality = "Forthright"
			endif
		
	}