	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){



	}
	

	function OnOption0(){
		
		BC( "dialogbox", "player", -1, "Greetings. I am Farina, the guardian of this forest.\nFew have ever reached this place; fewer still pass this trial.\nYour success has proven the strength of your resolve. Never give up.\nWhen you're ready, use the White Tiger Core to return to Atlantis." )
		$ectype_id = GetEctypeID( -1 , 474 )
		SetEctypeVar($ectype_id , 1 , 20 )
		
	}
	
	
	
	
	
	
	
	
	
	

