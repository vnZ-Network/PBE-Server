	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/29
	//		Author:???
	//		TaskName:ITEM-AV-doubleexp-64347.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$a =  HaveTitle( -1 , 46 )
		if $a != 0
			BC( "dialogbox", "player", -1, "Unable to acquire Yggdrasil Seed without the title 'Yggdrasil Seeker.'" )
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 64347 , 1 )
		if  $info != 0
			return
		endif
		AddExpAddons( -1 , 600 , 0 )
		
	}
	