	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/09/21
	//		Author：唐寅
	//		TaskName：quest-tianshirichang
	//		TaskID：2523 2524 2525
	//
	//****************************************

function OnTaskDone(){

	$Now_Yday =  GetSystemTime( "yday" )	
	$RankList = GetRankListValue( 1, 499 )
	$no = GetGlobalVar( 959 )
	$no1 = $no + 1
	$no2 = SetGlobalVar( 959,$no1 )
	
	//设置变量今天参加过			
	SetPlayerVar(-1,3934,$Now_Yday )		
						

//等级^2*50*（等级*0.04-0.76）
	$lv = GetPlayerInfo( -1 , "level" )
	$a = $lv * $lv
	$exp3 = $a * 140
	$exp12 = $exp3 * 85
	$exp2  = $exp12 / 100 
	$exp11 = $exp3 * 7
	$exp1 = $exp11 / 10
	$exp10 = $exp3 * 6
	$exp0 = $exp10 / 10
	

		if $RankList < 50
				AddPlayerInfo( -1 , "exp" , $exp0 )
		endif
		if $RankList >= 50
				if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1 )
				endif
		endif
		if $RankList >= 70
				if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
		endif
		if $RankList >= 90
				AddPlayerInfo( -1 , "exp" , $exp3 )
		endif
	
	
	
}	