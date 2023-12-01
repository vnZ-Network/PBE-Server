	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/08/10
	//		Author£∫¿Ó“Ì∑…
	//		TaskName£∫“¯±¶œ‰
	//		TaskID£∫Monster_11971.s
	//
	//****************************************

function OnDead(){

	DropMonsterItems(-1, 90203 )

		$playerid = GetPlayerID()
		$point = GetPlayerVar($playerid,244)
		if $point == 0
			SetPlayerVar($playerid,244,1)
			SetPlayerActLog($playerid,4,0)
		endif

	}