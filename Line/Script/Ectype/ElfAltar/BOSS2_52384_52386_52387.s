	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:???BOSS2???
	//		TaskID:BOSS2_Noob_52384.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)
		
		//????
		SetEctypeVar($ectype_id,50,1)

		StartEctypeTimer($ectype_id,0)
		SetEctypeVar($ectype_id,84,0)
		SetEctypeVar($ectype_id,88,0)
		SetEctypeVar($ectype_id,119,0)
		//??TD???
		SetEctypeVar($ectype_id,44,0)
		SetEctypeVar($ectype_id,45,0)
		SetEctypeVar($ectype_id,46,0)
		SetEctypeVar($ectype_id,47,0)		
		
//		BC( "chat", "player", -1, "GUID:04267000000")

		DeleteMonster($ectype_id,52384)		
		DeleteMonster($ectype_id,52385)	
		DeleteMonster($ectype_id,52386)	
		DeleteMonster($ectype_id,52387)	
		DeleteMonster($ectype_id,52457)
		DeleteMonster($ectype_id,52456)
		
		DeleteMonster($ectype_id,52454)
		
	}