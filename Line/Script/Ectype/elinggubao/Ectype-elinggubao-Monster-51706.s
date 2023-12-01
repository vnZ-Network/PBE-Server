	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/10
	//		Author:???
	//		TaskName:Ectype-elinggubao-Monster-51706.s
	//		TaskID:???????1
	//
	//****************************************
	
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 258 )
		
		//?????
		DeleteMonster($ectype_ID , 51698)
		
		BC( "screen" , "map" , $ectype_ID , "Its power is weaker now!" )
		
	}