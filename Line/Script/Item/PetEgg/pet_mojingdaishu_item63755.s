	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/6/18
	//		Author:??
	//		TaskName:Item-63755.s
	//		TaskID:????????
	//****************************************
	
	function OnUseItem(){
	
		$item = 63755
	
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
		
		//????????
		$rand = RandomNumber ( 1, 5 )
		
		if $rand == 1
			AddPet( -1 , 3083 , 1 , 3 )
			return
		endif
		
		if $rand == 2
			AddPet( -1 , 3084 , 1 , 3 )
			return
		endif
		
		if $rand == 3
			AddPet( -1 , 3085 , 1 , 3 )
			return
		endif
		
		if $rand == 4
			AddPet( -1 , 3086 , 1 , 3 )
			return
		endif
		
		if $rand == 5
			AddPet( -1 , 3087 , 1 , 3 )
			return
		endif
		
	}

