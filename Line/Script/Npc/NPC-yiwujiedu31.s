	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/24
	//		Author:??
	//		TaskName:NPC-yiwujiedu31.s
	//		TaskID:????NPC
	//
	//****************************************
	
	function OnRequest(){
	
		$revalue = IsTaskDone(-1 , 761)
		if $revalue != 0
			DisableNpcOption(0)
		endif
		
	}
	
	
	function OnOption0(){
	
		$revalue = IsExistStatus(-1 , 8648)
		if $revalue != 0
			BC( "dialogbox", "player", -1, "You don't have Frost Bite on you." )
			return
		endif
		AddStatus(-1 , 10648 , 2)  
		PlayEffect(-1,"skill\pet\Dark\fire\Pet_fire_Dark.ini")
		
	}