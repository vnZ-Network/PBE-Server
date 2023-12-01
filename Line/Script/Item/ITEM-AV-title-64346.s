	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/29
	//		Author:???
	//		TaskName:ITEM-AV-title-64346.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$a =  HaveTitle( -1 , 46 )
		if $a == 0
			BC( "dialogbox", "player", -1, "You have already acquired this title!" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 64346 , 1 )
		if  $info != 0
			return
		endif
		AddTitle( -1 , 46 )
		BC( "dialogbox", "player", -1, "You have acquired a new title: Yggdrasil Seeker!" )
	}
	