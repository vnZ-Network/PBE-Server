	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8
	//		Author:???(??,??,??)
	//		TaskName:??? ???????
	//		TaskID:52448_MagicColumn_OutsideSoul.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541

		$ectype_id = GetEctypeID(-1, 541)
		
		//??????????????,??????,???
		
		SetEctypeVar($ectype_id,75,2)
		BC("screen","map",$ectype_id,"The Nature Pillar has been destroyed, but nature magic will still regenerate.")

		
		
	}