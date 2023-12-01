   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/05
	//		Author: ???
	//		TaskName:Monster-52606.s
	//		TaskID:????1????????
	//****************************************
	
	//?????1???       110  
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		$count = GetEctypeVar( -1 , 110 )
		
		$count = $count + 1
		//??10??????1
		if $count == 10
		
			BC( "screen" , "map" , $ectype_ID , "You have successfully killed" , $count , " / 10 Death Puppets! The path is now open!" )
			
			//XXXX?????
			OpenMask( 1 , $ectype_ID )
			
			
			//????5? 51277
			AddMonster( 52607 , 5 , $ectype_ID , 84 , 61 , 5 )
		else
			BC( "screen" , "map" , $ectype_ID , "You have successfully killed" , $count , " / 10 Death Puppets!" )
			SetEctypeVar( -1 , 110 , $count )
		endif
		
	}