	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/04
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2138.s
	//		TaskID:???????????????
	//
	//****************************************
	
	
	function OnRequest(){
	
		//????id
		$Ectype_ID = GetEctypeID( -1 , 258 )
		
		//??????????0?,1?
		$mask18 =  GetEctypeVar($Ectype_ID , 3)
		if $mask18 == 1
			BC("screen" , "player" , -1 ,  "The door leading to the Underpass has opened." )
		else
			OpenMask( 18 , $Ectype_ID )
			SetEctypeVar($Ectype_ID , 3,1)
			//PlaySoundToView (-1,??????)
			NPCAction(-1 , 2138 , down , 1)
			AddNPC(2253 , $Ectype_ID)
			BC("screen" , "map" , -1 ,  "The door leading to the Underpass has opened." )
		endif
	
	
	}
	
	
	//function OnOption0(){
	//
	//	$ectype_id = GetEctypeID( -1 , 258 )
	//	FlyToMap( -1, $ectype_id, 7, 92 )
		
	//}