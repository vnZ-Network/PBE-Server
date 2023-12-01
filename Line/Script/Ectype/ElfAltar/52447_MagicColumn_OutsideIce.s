	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8
	//		Author:???(??,??,??)
	//		TaskName: ????
	//		TaskID:52447_MagicColumn_OutsideIce.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541

		$ectype_id = GetEctypeID(-1, 541)
		
		//??????????????,??????,???
		
		SetEctypeVar($ectype_id,74,2)
		BC("screen","map",$ectype_id,"The Ice Pillar has been destroyed, but ice magic will regenerate.")
		
		
		
	}