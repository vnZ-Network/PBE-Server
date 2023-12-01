	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Minghe-Ectype-map-1.s
	//		TaskID: ?? ??1????
	//
	//****************************************
	
	function EnterArea(){
	
		$ectype_id = GetEctypeID( -1 , 244 )
		FlyToMap( -1 , $ectype_id , 53 , 72 )
		AddStatus( -1 , 10703, 2 )
		BC( "screen" , "player" , -1 , "Pandora has found you" )
		PlayEffect( -1, "Effect\common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini" )

	}
	
	function LeaveArea(){
	
		
		
	}