	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:?????
	//		TaskID:51883-Five.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 532,???  16
		
		$ectype_id = GetEctypeID(-1, 532)
		$count = GetEctypeVar(-1, 16)
		
		$count = $count + 1
		SetEctypeVar(-1, 16, $count)		
//		BC("screen","map",$ectype_id,"GUID:04378000000",$count)
		
		StartEctypeTimer($ectype_id, 5)
	}