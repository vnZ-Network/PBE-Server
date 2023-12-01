   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/05
	//		Author: ???
	//		TaskName:Monster-52607.s
	//		TaskID:????2????????
	//****************************************
	
	//?????2???       111  
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		$count = GetEctypeVar( -1 , 111 )
		
		$count = $count + 1
		//??5??????2
		if $count == 5
			BC( "screen" , "map" , $ectype_ID , "You have successfully killed" , $count , " / 5 Death Puppets! You can now challenge Harpy Queen Falia." )
			
			//XXXX?????2
			OpenMask( 2 , $ectype_ID )
			
			//????1? 51278
			AddMonster( 52632 , 1 , $ectype_ID , 86 , 38 , 0 )
		else
			BC( "screen" , "map" , $ectype_ID , "You have successfully killed" , $count , " / 5 Death Puppets!" )
			SetEctypeVar( -1 , 111 , $count )
		endif
		
	}