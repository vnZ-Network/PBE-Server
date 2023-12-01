	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Banshou3-NPC-546.s
	//		TaskID:????3
	//
	//****************************************
	
	
	function OnRequest(){
	

	}
	
	function OnOption0(){
	
		
		$accept = IsTaskAccept( -1 , 188 )
		
		if $accept != 0
			BC( "screen", "player", "-1", "Please receive quest first" )
		endif
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		$array = [1, 2, 3, 4, 5]
		$n = 5
		while $n > 0
			$random = RandomNumber( 1, $n )
			$temp = $array[$n]
			$array[$n] = $array[$random]
			$array[$random] = $temp
			$n -= 1
		endwhile
				SetEctypeVar( $ectype_ID, 110, 0 )

		SetEctypeVar( $ectype_ID, 110, $array[1] )
		SetEctypeVar( $ectype_ID, 111, $array[2] )
		SetEctypeVar( $ectype_ID, 112, $array[3] )
		SetEctypeVar( $ectype_ID, 113, $array[4] )
		SetEctypeVar( $ectype_ID, 114, $array[5] )
		SetEctypeVar( $ectype_ID, 115, 110 )
		SetEctypeVar( $ectype_ID, 116, 0 )
		SetEctypeVar( $ectype_ID, 6, 1 )
		SetEctypeVar( $ectype_ID, 0, 0 )
		StartEctypeTimer( $ectype_ID, 1 )
	
	}