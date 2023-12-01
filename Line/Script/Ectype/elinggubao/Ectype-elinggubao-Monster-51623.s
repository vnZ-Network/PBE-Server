
	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/3/23
	//		Author：杨原林
	//		TaskName：Ectype-elinggubao-Monster-51623.s
	//		TaskID：恶魔之书
	//****************************************

	
	function OnDead(){
		$ectype_id = GetEctypeID( -1 , 258 )
		//获取副本的模式,0普通难度  1 困难
		$mode = GetEctypeVar( $ectype_id , 111 )
		
		//110是队伍平均等级
		$level = GetEctypeVar( $ectype_id , 110 )
		if $mode == 0
			//强度等级
			$ectlevel = 54
		endif
		
		if $mode == 1
			//强度等级
			$ectlevel = 55
		endif
		
		SetEctypeVar( -1 , 4 , 0 )
		
		//刷聚能量的怪
		$rand8 = RandomNumber ( 0,3 )
		//菱形阵型51624
		if $rand8 == 0 
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 72 , 0 )
			AddLevelMonster( 51624 , $ectlevel , 10 , 1 , $ectype_id , 92 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 75 , 0 )
		endif
		//长方形51624、51625	
		if $rand8 == 1
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 71 , 0 )
			AddLevelMonster( 51624 , $ectlevel , 10 , 1 , $ectype_id , 93 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 73 , 0 )
			AddLevelMonster( 51625 , $ectlevel , 10 , 1 , $ectype_id , 91 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 75 , 0 )
		endif
		//正方形51626\51625
		if $rand8 == 2
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 72 , 0 )
			AddLevelMonster( 51626 , $ectlevel , 10 , 1 , $ectype_id , 90 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 72 , 0 )
			AddLevelMonster( 51625 , $ectlevel , 10 , 1 , $ectype_id , 94 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 75 , 0 )
		endif
		
		
		//十字形51626\51624
		if $rand8 == 3
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 69 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 70 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 71 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 72 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 89 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 90 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 94 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 95 , 73 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 74 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 91 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 92 , 75 , 0 )
			AddLevelMonster( 51628 , $ectlevel , 10 , 1 , $ectype_id , 93 , 75 , 0 )
			AddLevelMonster( 51626 , $ectlevel , 10 , 1 , $ectype_id , 89 , 69 , 0 )
			AddLevelMonster( 51624 , $ectlevel , 10 , 1 , $ectype_id , 95 , 69 , 0 )
			AddLevelMonster( 51625 , $ectlevel , 10 , 1 , $ectype_id , 89 , 75 , 0 )
			AddLevelMonster( 51626 , $ectlevel , 10 , 1 , $ectype_id , 95 , 75 , 0 )

		endif
		
		//刷经验字符(最多出现5次)
		//$randexp = RandomNumber ( 0,10 )
		//$rushexp = GetEctypeVar( $ectype_id , 5 )
		//$rushexp = $rushexp + 1
		
		//if $rushexp < 5
		//	if $randexp < 5
		//		AddLevelMonster( 51627 , $ectlevel , 10 , 1 , $ectype_id , 93 , 70 , 0 )
		//		SetEctypeVar( -1 , 5 , $rushexp )
		//	endif
		//endif
		
		//刷需要打相同数量的三个字符
		//$rand1 = RandomNumber ( 0,2 )
		
		//if $rand1 == 0
		//	AddLevelMonster( 51624 , $ectlevel , 10 , 1 , $ectype_id , 94 , 72 , 0 )
		//	AddLevelMonster( 51625 , $ectlevel , 10 , 1 , $ectype_id , 93 , 73 , 0 )
		//endif
		
		//if $rand1 == 1
		//	AddLevelMonster( 51625 , $ectlevel , 10 , 1 , $ectype_id , 93 , 73 , 0 )
		//	AddLevelMonster( 51626 , $ectlevel , 10 , 1 , $ectype_id , 92 , 72 , 0 )
		//endif
		
		//if $rand1 == 2
		//	AddLevelMonster( 51624 , $ectlevel , 10 , 1 , $ectype_id , 94 , 72 , 0 )
		//	AddLevelMonster( 51626 , $ectlevel , 10 , 1 , $ectype_id , 92 , 72 , 0 )
		//endif
		

		
	}	