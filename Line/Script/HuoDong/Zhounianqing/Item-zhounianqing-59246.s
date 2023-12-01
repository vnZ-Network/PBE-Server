		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59246.s
	//		TaskID:???????
	//****************************************
 
	function OnUseItem(){
	
	
		$lv = GetPlayerInfo( -1 , "level" )
		$count = GetTaskCount ( -1 )
		
		if $count > 25
			BC( "screen", "player", -1, "Your Quest Log is full. Try again after clearing up some space." )
			return
		endif
		
		if $lv < 60
			BC( "screen", "player", -1, "You can't use it before reaching LV60." )
			return
		endif
		
		$result = SubPlayerInfo( -1 , "item" , 59246 , 1 )
		if $result != 0
			return
		endif
		
		
		AcceptTask( -1, 4495 )
		AcceptTask( -1, 4496 )
		AcceptTask( -1, 4497 )
		AcceptTask( -1, 4498 )
		
		
		
	}