	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/22
	//		Author:??
	//		TaskName:Item-60070.s
	//		TaskID:?????????
	//****************************************
	
	function OnUseItem(){
	
		$card = 60070
		$petid = 3007
	
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
		$nfo = SubPlayerInfo( -1 , "item" , $card , 1 )
		if $nfo != 0
			return
		endif
		
		AddPet( -1 , $petid , 1 , 1 )
		
			
	}

