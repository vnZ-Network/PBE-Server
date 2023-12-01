	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Minghe-Ectype-map-3.s
	//		TaskID: ?? ??3???? ?????
	//
	//****************************************
	
	function EnterArea(){
	
		$ectype_id = GetEctypeID( -1 , 244 )
		FlyToMap( -1 , 245 , 93 , 47 )
		AddStatus( -1 , 10703, 2 )
		BC( "screen" , "player" , -1 , "You enter upriver Styx. It is the only way to the human world." )
		BC( "chat" , "player" , -1 , "You enter upriver Styx. It is the only way to the human world." )

	}
	
	function LeaveArea(){
	
	}