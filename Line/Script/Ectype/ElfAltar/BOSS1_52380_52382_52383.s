	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:???BOSS1???
	//		TaskID:BOSS1_52380_52382_52383.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)

		StartEctypeTimer($ectype_id,0)
		
		
		//?????? var 81
		SetEctypeVar($ectype_id,82,1)
		SetEctypeVar($ectype_id,84,0)
		SetEctypeVar($ectype_id,88,0)
		SetEctypeVar($ectype_id,119,0)
		
		//??TD???
		SetEctypeVar($ectype_id,44,0)
		SetEctypeVar($ectype_id,45,0)
		SetEctypeVar($ectype_id,46,0)
		SetEctypeVar($ectype_id,47,0)
//		BC( "chat", "player", -1, "GUID:04266000000")

		DeleteMonster($ectype_id,52380)		
		DeleteMonster($ectype_id,52381)	
		DeleteMonster($ectype_id,52382)	
		DeleteMonster($ectype_id,52383)	
		DeleteMonster($ectype_id,52427)
		DeleteMonster($ectype_id,52426)
		
		
		
	}