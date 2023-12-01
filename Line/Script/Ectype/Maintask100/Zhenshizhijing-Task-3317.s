	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Task-3317.s
	//		TaskID 挑战七宗罪日常
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 6, 1 )
		//SetEctypeVar( $ectype_ID, 8, 0 )
		//51582	1
		//51583	2
		//51584	3
		//51579	4
		//51580	5
		//51581	6
		//51585	7
		
		SetEctypeVar( $ectype_ID, 25, 1 )
		SetEctypeVar( $ectype_ID, 26, 2 )
		SetEctypeVar( $ectype_ID, 27, 3 )
		SetEctypeVar( $ectype_ID, 28, 4 )
		SetEctypeVar( $ectype_ID, 29, 5 )
		SetEctypeVar( $ectype_ID, 30, 6 )
		SetEctypeVar( $ectype_ID, 31, 7 )

		$n = 27
		while $n > 25
			$random = RandomNumber( 25, $n )
			$var1 = GetEctypeVar( $ectype_ID, $n )
			$var2 = GetEctypeVar( $ectype_ID, $random )
			SetEctypeVar( $ectype_ID, $n, $var2 )
			SetEctypeVar( $ectype_ID, $random, $var1 )
			$n = $n - 1
		endwhile
		
		$n = 31
		while $n > 28
			$random = RandomNumber( 28, $n )
			$var3 = GetEctypeVar( $ectype_ID, $n )
			$var4 = GetEctypeVar( $ectype_ID, $random )
			SetEctypeVar( $ectype_ID, $n, $var4 )
			SetEctypeVar( $ectype_ID, $random, $var3 )
			$n = $n - 1
		endwhile
		//
		$var = GetEctypeVar( $ectype_ID, 25 )
		if $var == 1
			SetEctypeVar( $ectype_ID, 110, 51582 )
		endif
		if $var == 2
			SetEctypeVar( $ectype_ID, 110, 51583 )
		endif
		if $var == 3
			SetEctypeVar( $ectype_ID, 110, 51584 )
		endif
		if $var == 4
			SetEctypeVar( $ectype_ID, 110, 51579 )
		endif
		if $var == 5
			SetEctypeVar( $ectype_ID, 110, 51580 )
		endif
		if $var == 6
			SetEctypeVar( $ectype_ID, 110, 51581 )
		endif
		if $var == 7
			SetEctypeVar( $ectype_ID, 110, 51585 )
		endif
		//
		$var = GetEctypeVar( $ectype_ID, 26 )
		if $var == 1
			SetEctypeVar( $ectype_ID, 111, 51582 )
		endif
		if $var == 2
			SetEctypeVar( $ectype_ID, 111, 51583 )
		endif
		if $var == 3
			SetEctypeVar( $ectype_ID, 111, 51584 )
		endif
		if $var == 4
			SetEctypeVar( $ectype_ID, 111, 51579 )
		endif
		if $var == 5
			SetEctypeVar( $ectype_ID, 111, 51580 )
		endif
		if $var == 6
			SetEctypeVar( $ectype_ID, 111, 51581 )
		endif
		if $var == 7
			SetEctypeVar( $ectype_ID, 111, 51585 )
		endif
		//
		$var = GetEctypeVar( $ectype_ID, 28 )
		if $var == 1
			SetEctypeVar( $ectype_ID, 112, 51582 )
		endif
		if $var == 2
			SetEctypeVar( $ectype_ID, 112, 51583 )
		endif
		if $var == 3
			SetEctypeVar( $ectype_ID, 112, 51584 )
		endif
		if $var == 4
			SetEctypeVar( $ectype_ID, 112, 51579 )
		endif
		if $var == 5
			SetEctypeVar( $ectype_ID, 112, 51580 )
		endif
		if $var == 6
			SetEctypeVar( $ectype_ID, 112, 51581 )
		endif
		if $var == 7
			SetEctypeVar( $ectype_ID, 112, 51585 )
		endif
		//
		$var = GetEctypeVar( $ectype_ID, 29 )
		if $var == 1
			SetEctypeVar( $ectype_ID, 113, 51582 )
		endif
		if $var == 2
			SetEctypeVar( $ectype_ID, 113, 51583 )
		endif
		if $var == 3
			SetEctypeVar( $ectype_ID, 113, 51584 )
		endif
		if $var == 4
			SetEctypeVar( $ectype_ID, 113, 51579 )
		endif
		if $var == 5
			SetEctypeVar( $ectype_ID, 113, 51580 )
		endif
		if $var == 6
			SetEctypeVar( $ectype_ID, 113, 51581 )
		endif
		if $var == 7
			SetEctypeVar( $ectype_ID, 113, 51585 )
		endif

	}
	
	function OnTaskDone(){
		
		
	}