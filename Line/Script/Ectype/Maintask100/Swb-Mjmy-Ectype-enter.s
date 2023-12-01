	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/23
	//		Author：司文博
	//		TaskName：Swb-Mjmy-Ectype-enter.s
	//		TaskID：进入梦魇魔域脚本
	//
	//****************************************

	function OnCreate(){
		
	}
	
	function InitTimer(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		SetEctypeTimer( 1 , 1 , "EctypeTime0" )
		SetEctypeTimer( 2 , 40 , "EctypeTime1" )
		
	}
	
	function EctypeTime0(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		
		CloseMask( 1 , $ectype_id )
		
		$a = GetEctypeVar( $ectype_id , 23 )
		if $a == 1
			OpenMask( 2 , $ectype_id )
			OpenMask( 3 , $ectype_id )
		else
			CloseMask( 2 ,$ectype_id )
			CloseMask( 3 ,$ectype_id )
		endif
		$a = GetEctypeVar( $ectype_id , 24 )
		if $a == 1
			OpenMask( 4 , $ectype_id )
		else
			CloseMask( 4 ,$ectype_id )
		endif
		$a = GetEctypeVar( $ectype_id , 25 )
		if $a == 1
			OpenMask( 5 , $ectype_id )
		else
			CloseMask( 5 ,$ectype_id )
		endif
		$a = GetEctypeVar( $ectype_id , 26 )
		if $a == 1
			DeleteNPC( 507 , $ectype_id )
			AddNPC( 510 , $ectype_id )
		else
			DeleteNPC( 510 , $ectype_id )
			AddNPC( 507 , $ectype_id )
		endif
		
		$a = GetEctypeVar( $ectype_id , 27 )
		if $a == 0
			DeleteNPC( 523 , $ectype_id )
		else
			AddNPC( 523 , $ectype_id )
		endif
		
		$a = GetEctypeVar( $ectype_id , 28 )
		if $a == 0
			DeleteNPC( 513 , $ectype_id )
		else
			AddNPC( 513 , $ectype_id )
		endif
		
		$a = GetEctypeVar( $ectype_id , 30 )
		if $a == 0
			DeleteNPC( 509 , $ectype_id )
		else
			AddNPC( 509 , $ectype_id )
		endif
		
		
		AddMonsterByFloat( 51512 , 1 , $ectype_id , 194 , 152, 0 )
		AddMonsterByFloat( 51523 , 1 , $ectype_id , 122 , 165, 0 )
		
		AddMonsterByFloat( 51501 , 10 , $ectype_id , 100 , 193, 0 )
		AddMonsterByFloat( 51501 , 10 , $ectype_id , 100 , 220, 0 )
		AddMonsterByFloat( 51501 , 10 , $ectype_id , 120 , 202, 0 )
		AddMonsterByFloat( 51501 , 10 , $ectype_id , 143 , 192, 0 )
		
		AddMonsterByFloat( 51520 , 5 , $ectype_id , 194 , 152, 0 )
		AddMonsterByFloat( 51520 , 5 , $ectype_id , 234 , 171, 0 )
		AddMonsterByFloat( 51520 , 5 , $ectype_id , 215 , 214, 0 )
		AddMonsterByFloat( 51520 , 5 , $ectype_id , 193 , 254, 0 )
		AddMonsterByFloat( 51520 , 5 , $ectype_id , 174 , 195, 0 )
		
		SetEctypeVar( $ectype_id , 0 , 1 )
		SetEctypeVar( $ectype_id , 1 , 2 )
		SetEctypeVar( $ectype_id , 2 , 3 )
		SetEctypeVar( $ectype_id , 3 , 4 )
		SetEctypeVar( $ectype_id , 4 , 5 )
		SetEctypeVar( $ectype_id , 5 , 6 )
		SetEctypeVar( $ectype_id , 6 , 7 )
		SetEctypeVar( $ectype_id , 7 , 8 )
		
		$n = 0
		while $n < 7
		
			$var = RandomNumber ( $n , 7 )
			$c = GetEctypeVar( $ectype_id , $var )
			$c1 = GetEctypeVar( $ectype_id , $n )
			SetEctypeVar( $ectype_id , $var , $c1 )
			SetEctypeVar( $ectype_id , $n , $c )
			$n = $n + 1
			
		endwhile
		
		$a = RandomNumber ( 1 , 8 )
		SetEctypeVar( $ectype_id , 28 , $a )
		
	}
	
	function EctypeTime1(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		
		DeleteMonster($ectype_id , 51508 )
		DeleteMonster($ectype_id , 51509 )
		DeleteMonster($ectype_id , 51510 )
		AddNPC( 513 , $ectype_id )
	
	}

