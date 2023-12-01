	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/02/22
	//		Author:???
	//		TaskName:??????
	//		TaskID:
	//
	//****************************************
	
	function OnDead(){
		

		
		$isacc = IsTaskAccept( -1, 1726 )
		if $isacc == 1
			BC( "screen" , "player" , -1 , "Strange monsters have been killed." )
		else
			BC( "messagebox" , "player" , -1 , "You got the Mysterious Tablet." )
			SetTaskDone( -1 , 1726 )
			AddPlayerInfo( -1, "item",  59828 , 1)
		endif
		
		
	}