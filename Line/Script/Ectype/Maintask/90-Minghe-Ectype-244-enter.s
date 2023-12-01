	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/05
	//		Author:???
	//		TaskName:90-Minghe-Ectype-244-enter.s
	//		TaskID:
	//
	//****************************************
	
	function OnCreate(){
		
	}
	
	function InitTimer(){
	
		$ectype_id = GetEctypeID( -1 , 244 )
		SetEctypeTimer( 1 , 2 , "EctypeTime0" )
		SetEctypeTimer( 2 , 120 , "EctypeTime1" )
		SetEctypeTimer( 3 , 120 , "EctypeTime2" )
		
	}

	function EctypeTime0(){
	
		$ectype_id = GetEctypeID( -1 , 244 )
		
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 92, 195 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 97, 199 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 104, 203 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 112, 208 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 123, 209 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 133, 213 , 0 )
		
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 128, 211 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 119, 208 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 108, 205 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 100, 200 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 94, 197 , 0 )
		AddMonsterByFloat( 55076 , 1 , $ectype_id , 87, 193 , 0 )
	
	}
	

	function EctypeTime1(){
		
		$ectype_id = GetEctypeID( -1 , 244 )
		StartEctypeTimer( $ectype_id , 3 )
		$n = RandomNumber ( 0, 8 )
		BC( "screen" , "map" , $ectype_id , "Wandering souls appeared" )
		BC( "chat" , "map" , $ectype_id , "Wandering souls appeared" )
		if $n == 0
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 118, 185 , 1 )
		endif
		if $n == 1
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 121, 176 , 1 )
		endif
		if $n == 2
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 113, 183 , 1 )
		endif
		if $n == 3
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 112, 174 , 1 )
		endif
		if $n == 4
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 116, 173 , 1 )
		endif
		if $n == 5
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 120, 172 , 1 )
		endif
		if $n == 6
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 122, 163 , 1 )
		endif
		if $n == 7
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 136, 166 , 1 )
		endif
		if $n == 8
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 134, 190 , 1 )
		endif
	}
	
	function EctypeTime2(){
		
		$ectype_id = GetEctypeID( -1 , 244 )
		StartEctypeTimer( $ectype_id , 2 )
		BC( "screen" , "map" , $ectype_id , "Wandering souls appeared" )
		BC( "chat" , "map" , $ectype_id , "Wandering souls appeared" )
		$n = RandomNumber ( 0, 8 )
		if $n == 0
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 118, 185 , 1 )
		endif
		if $n == 1
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 121, 176 , 1 )
		endif
		if $n == 2
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 113, 183 , 1 )
		endif
		if $n == 3
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 112, 174 , 1 )
		endif
		if $n == 4
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 116, 173 , 1 )
		endif
		if $n == 5
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 120, 172 , 1 )
		endif
		if $n == 6
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 122, 163 , 1 )
		endif
		if $n == 7
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 136, 166 , 1 )
		endif
		if $n == 8
			AddMonsterByFloat( 55087 , 1 , $ectype_id , 134, 190 , 1 )
		endif
	}
		
