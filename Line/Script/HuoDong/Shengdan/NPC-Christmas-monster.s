	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/12/16
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºNPC-Christmas-monster.s
	//		TaskID£º±ùÑ©ÑýÄ§55193
	//
	//****************************************
	
	function OnDead(){
	
		$yday = GetSystemTime( "yday" )
		$yday = $yday + 1
		SetServerVar(138,$yday)
		
	}