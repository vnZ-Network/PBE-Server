	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/6/18
	//		Author:??
	//		TaskName:Item-62562.s
	//		TaskID:????????
	//****************************************
	
	function OnUseItem(){
	
		$item = 62562
	
		//???????????
		$petmax = GetPetMaxCount( -1 )
		
		//??????????
		$count = GetPetCount( -1 )
		
		//?????????????
		if $count == $petmax
			BC( "screen", "player", -1, "Your pet bar is full." )
			return
		endif
		
		//??????????
		$nfo = SubPlayerInfo( -1 , "item" , $item , 1 )
		if $nfo != 0
			return
		endif
		
		
		AddPet( -1 , 3088 , 1 , 2 )
		
		
	}

