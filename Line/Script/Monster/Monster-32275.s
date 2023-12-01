	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011-9-21
	//		Author:???
	//		TaskName:??32275
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
//21	???
//245	???????
//44	?????
//?? 283 284 285
//32272	??????
//32273	??????
//32274	??????
//32275	????????
//32276	??

		$mapid = GetPlayerInfo(-1,"mapid")
		$mapX = GetPlayerInfo(-1,"mapposx")
		$mapY = GetPlayerInfo(-1,"mapposy")
		if $mapid == 21
			$val = GetServerVar(283)
			$randm = RandomNumber(0,59)
			$number = 4 - $val
			if $number < 1
				BC("screen","map",$mapid,"The Destroyer has escaped!")
				return
			endif
			$line = 60 / $number
			if $randm < $line
				AddMonsterByFloat(32272,1,$mapid,$mapX,$mapY,1)
				SetServerVar(283,100)
			else
				$val = $val + 1
				SetServerVar(283,$val)
			endif
		endif
		if $mapid == 245
			$val = GetServerVar(284)
			$randm = RandomNumber(0,59)
			$number = 5 - $val
			if $number < 1
				BC("screen","map",$mapid,"The Destroyer has escaped!")
				return
			endif
			$line = 60 / $number
			if $randm < $line
				AddMonsterByFloat(32273,1,$mapid,$mapX,$mapY,1)
				SetServerVar(284,100)
			else
				$val = $val + 1
				SetServerVar(284,$val)
			endif
		endif
		if $mapid == 44
			$val = GetServerVar(285)
			$randm = RandomNumber(0,59)
			$number = 6 - $val
			if $number < 1
				BC("screen","map",$mapid,"The Destroyer has escaped!")
				return
			endif
			$line = 60 / $number
			if $randm < $line
				AddMonsterByFloat(32274,1,$mapid,$mapX,$mapY,1)
				SetServerVar(285,100)
			else
				$val = $val + 1
				SetServerVar(285,$val)
			endif
		endif
			
			
	} 
		
	