	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/04/11
	//		Author：唐寅
	//		TaskName：Ectype-gshilianchang-Init.s
	//		TaskID：公会试炼场副本脚本
	//
	//****************************************

	function OnCreate(){
	//获得当前副本的地图ID
	$ectype_ID = GetCurEctypeID()
	StartEctypeTimer($ectype_ID , 0 )
	}
	
	function InitTimer(){
		
	//获得当前副本的地图ID
	$ectype_ID = GetCurEctypeID()
	SetEctypeTimer(0 , 10 , "EctypeTime0")
	StartEctypeTimer($ectype_ID , 0 )
		
	}
	
	function EctypeTime0(){
		
	//获得当前副本的地图ID
	$ectype_ID = GetCurEctypeID()
	$level = GetEctypeVar($ectype_ID , 4 ) 
	AddLevelMonster( 51901, 1 , $level , 1, $ectype_ID , 32 , 26 , 1 )
			
	}
