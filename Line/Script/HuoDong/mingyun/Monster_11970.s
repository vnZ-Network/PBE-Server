	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/08/10
	//		Author£∫¿Ó“Ì∑…
	//		TaskName£∫Ω±¶œ‰
	//		TaskID£∫Monster_11970.s
	//
	//****************************************

	function OnDead(){
		
		DropMonsterItems(-1, 90202 )
		
		$playerid = GetPlayerID()
		$point = GetPlayerVar($playerid,244)
		if $point == 0
			SetPlayerVar($playerid,244,1)
			SetPlayerActLog($playerid,4,0)
		endif
		
	}