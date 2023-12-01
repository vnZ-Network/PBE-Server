	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:???????
	//		TaskID:Mon11_52395_52396count.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)
		
		//????????
		$total = GetEctypeVar(-1, 1)
		$total = $total + 1
		SetEctypeVar(-1, 1, $total)
		BC( "screen", "player", -1, "Current # of monsters killed to open gate 1 = "$total)

		if $total == 10
			StartEctypeTimer($ectype_id,0)
			BC( "chat", "player", -1, "Monsters defeated! Now opening  the first gate")
		endif
		
		//?2?????1??30?,????BOSS???? 52400
		if $total == 30
			$boss_display = 52380
			AddMonsterByFloat($boss_display,1,$ectype_id,216,80,1,0,0)
		endif
		
		
	}