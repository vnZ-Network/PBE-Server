	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/12/16
	//		Author��˾�Ĳ�
	//		TaskName��NPC-Christmas-monster.s
	//		TaskID����ѩ��ħ55193
	//
	//****************************************
	
	function OnDead(){
	
		$yday = GetSystemTime( "yday" )
		$yday = $yday + 1
		SetServerVar(138,$yday)
		
	}