		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59243.s
	//		TaskID:????
	//****************************************
 
	function OnUseItem(){
	
	
		$lv = GetPlayerInfo( -1 , "level" )
		$time = GetPlayerVar( -1 , 3953 )
		$nowtime = GetSystemTime( "yday" )
		$nowtime = $nowtime + 1
		$round = GetPlayerVar( -1 , 3263 )
		$round = $round + 1
		$RankList = GetRankListValue( 1, 499 )		
		
		$lixian = GetPlayerVar( -1, 3598 )
		
	//----------lv*lv*10*12+lv*lv*400-------------
	//$exp0=??60??????
	//$exp1=????60??????
	//$exp2=????60??????
	//$exp3=????60??????
	
	
	//-----------???-----------
		//$a = $lv * $lv
		//$b = 120 * $a
		//$c = 400 * $a
		//$exp3 = $b + $c
		//$exp3 = $exp3 * 2
		//$exp3 = $exp3 / 5
	//----------------------------
	
	//?????? 186*????*????*????-24421*????*????+1075000*????-15760000
	
		$a = $lv * $lv
		$a = $a * $lv
		$a = $a * 186
		$b = $lv * $lv
		$b = $b * 24421
		$c = $a - $b
		$a = 1075000 * $lv
		$c = $c + $a
		$c = $c - 15760000
	
		$exp3 = $c
		
		$exp12 = $exp3 * 85
		$exp2  = $exp12 / 100 
		$exp11 = $exp3 * 7
		$exp1 = $exp11 / 10
		$exp10 = $exp3 * 6
		$exp0 = $exp10 / 10
		
		
	
	//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
	//$addexp0=??60??????
	//$addexp1=????60??????
	//$addexp2=????60??????
	//$addexp3=????60??????
	
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$addexp3 = $f + $g
		$addexp3 = $addexp3 * 2
		$addexp3 = $addexp3 / 5
		
		$addexp12 = $addexp3 * 85
		$addexp2  = $addexp12 / 100 
		$addexp11 = $addexp3 * 7
		$addexp1 = $addexp11 / 10
		$addexp10 = $addexp3 * 6
		$addexp0 = $addexp10 / 10
	//----------------------------------------------
	
	//????0-9?$exp0?????($exp0a)					
		$exp0a = $exp0 * 40
		$exp0a = $exp0a / 21
		
	//????0-9?$exp1?????($exp1a)					
		$exp1a = $exp1 * 40
		$exp1a = $exp1a / 21
		
	//????0-9?$exp2?????($exp2a)					
		$exp2a = $exp2 * 40
		$exp2a = $exp2a / 21
		
	//????0-9?$exp3?????($exp3a)					
		$exp3a = $exp3 * 40
		$exp3a = $exp3a / 21
	//-----------------------------------------			
	
	//????10-19?$exp0?????($exp0b)						
		$exp0b = $exp0 * 52
		$exp0b = $exp0b / 21
		
	//????10-19?$exp1?????($exp1b)					
		$exp1b = $exp1 * 52
		$exp1b = $exp1b / 21
		
	//????10-19?$exp2?????($exp2b)					
		$exp2b = $exp2 * 52
		$exp2b = $exp2b / 21
		
	//????10-19?$exp3?????($exp3b)					
		$exp3b = $exp3 * 52
		$exp3b = $exp3b / 21
		
	//----------------------------------------
		
	//????20-29?$exp0?????($exp0c)						
		$exp0c = $exp0 * 20
		$exp0c = $exp0c / 7
		
	//????20-29?$exp1?????($exp1c)					
		$exp1c = $exp1 * 20
		$exp1c = $exp1c / 7
		
	//????20-29?$exp2?????($exp2c)						
		$exp2c = $exp2 * 20
		$exp2c = $exp2c / 7
		
	//????20-29?$exp3?????($exp3c)						
		$exp3c = $exp3 * 20
		$exp3c = $exp3c / 7
		
	//----------------------------------------
	
	//????30???$exp0?????($exp0d)						
		$exp0d = $exp0 * 68
		$exp0d = $exp0d / 21
		
	//????30???$exp1?????($exp1d)						
		$exp1d = $exp1 * 68
		$exp1d = $exp1d / 21
		
	//????30???$exp2?????($exp2d)							
		$exp2d = $exp2 * 68
		$exp2d = $exp2d / 21
		
	//????30???$exp3?????($exp3d)								
		$exp3d = $exp3 * 68
		$exp3d = $exp3d / 21
		
	//----------------------------------------
	//----------------------------------------------
	//----------------------------------------------
	//----------------------------------------------
	//----------------------------------------------
	
	//????0-9?$addexp0?????($addexp0a)					
		$addexp0a = $addexp0 * 40
		$addexp0a = $addexp0a / 21
		
	//????0-9?$addexp1?????($addexp1a)					
		$addexp1a = $addexp1 * 40
		$addexp1a = $addexp1a / 21
		
	//????0-9?$addexp2?????($addexp2a)					
		$addexp2a = $addexp2 * 40
		$addexp2a = $addexp2a / 21
		
	//????0-9?$addexp3?????($addexp3a)					
		$addexp3a = $addexp3 * 40
		$addexp3a = $addexp3a / 21
	//-----------------------------------------			
	
	//????10-19?$addexp0?????($addexp0b)						
		$addexp0b = $addexp0 * 52
		$addexp0b = $addexp0b / 21
		
	//????10-19?$addexp1?????($addexp1b)					
		$addexp1b = $addexp1 * 52
		$addexp1b = $addexp1b / 21
		
	//????10-19?$addexp2?????($addexp2b)					
		$addexp2b = $addexp2 * 52
		$addexp2b = $addexp2b / 21
		
	//????10-19?$addexp3?????($addexp3b)					
		$addexp3b = $addexp3 * 52
		$addexp3b = $addexp3b / 21
		
	//----------------------------------------
		
	//????20-29?$addexp0?????($addexp0c)						
		$addexp0c = $addexp0 * 20
		$addexp0c = $addexp0c / 7
		
	//????20-29?$addexp1?????($addexp1c)					
		$addexp1c = $addexp1 * 20
		$addexp1c = $addexp1c / 7
		
	//????20-29?$addexp2?????($addexp2c)						
		$addexp2c = $addexp2 * 20
		$addexp2c = $addexp2c / 7
		
	//????20-29?$addexp3?????($addexp3c)						
		$addexp3c = $addexp3 * 20
		$addexp3c = $addexp3c / 7
		
	//----------------------------------------
	
	//????30???$addexp0?????($addexp0d)						
		$addexp0d = $addexp0 * 68
		$addexp0d = $addexp0d / 21
		
	//????30???$addexp1?????($addexp1d)						
		$addexp1d = $addexp1 * 68
		$addexp1d = $addexp1d / 21
		
	//????30???$addexp2?????($addexp2d)							
		$addexp2d = $addexp2 * 68
		$addexp2d = $addexp2d / 21
		
	//????30???$addexp3?????($addexp3d)								
		$addexp3d = $addexp3 * 68
		$addexp3d = $addexp3d / 21
		
	//----------------------------------------
	//40??????
	
	if $lv < 40
		BC( "screen", "player", -1, "You can't use it before reaching LV40." )
		return
	endif
	
	
	
	//?????????0-9?
	if $lixian <= 9
		if $nowtime != $time
			$result = SubPlayerInfo( -1 , "item" , 59243 , 1 )
			if $result != 0
				return
			endif
		
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0a )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1a )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2a )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3a )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0a )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1a )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2a )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3a )
				endif
			
			endif
			SetPlayerVar( -1 , 3953 , $nowtime )
			SetPlayerVar( -1 , 3263 , 1 )
			return
			
	//??????????????		
		else
			if $round > 3
				BC( "screen", "player", -1, "You can use Heart of Feedback 3 times a day." )
				return
			endif
			
			$result = SubPlayerInfo( -1 , "item" , 59243 , 1 )
			if $result != 0
				return
			endif
			
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0a )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1a )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2a )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3a )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0a )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1a )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2a )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3a )
				endif
			
			endif
			
			SetPlayerVar( -1 , 3263 , $round )
			return
		endif		
	endif	
	
	//----------------------------------------------------
	//?????????10-19?
	if $lixian <= 19
		if $nowtime != $time
			$result = SubPlayerInfo( -1 , "item" , 59243 , 1 )
			if $result != 0
				return
			endif
		
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0b )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1b )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2b )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3b )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0b )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1b )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2b )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3b )
				endif
			
			endif
			SetPlayerVar( -1 , 3953 , $nowtime )
			SetPlayerVar( -1 , 3263 , 1 )
			return
			
	//??????????????		
		else
			if $round > 3
				BC( "screen", "player", -1, "You can use Heart of Feedback 3 times a day." )
				return
			endif
			
			$result = SubPlayerInfo( -1 , "item" , 59243 , 1 )
			if $result != 0
				return
			endif
			
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0b )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1b )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2b )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3b )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0b )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1b )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2b )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3b )
				endif
			
			endif
			
			SetPlayerVar( -1 , 3263 , $round )
			return
		endif		
	endif
	
	//----------------------------------------------------
	//???????20-29?
	
	if $lixian <= 29
		if $nowtime != $time
			$result = SubPlayerInfo( -1 , "item" , 59243 , 1 )
			if $result != 0
				return
			endif
		
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0c )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1c )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2c )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3c )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0c )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1c )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2c )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3c )
				endif
			
			endif
			SetPlayerVar( -1 , 3953 , $nowtime )
			SetPlayerVar( -1 , 3263 , 1 )
			return
			
	//??????????????		
		else
			if $round > 3
				BC( "screen", "player", -1, "You can use Heart of Feedback 3 times a day." )
				return
			endif
			
			$result = SubPlayerInfo( -1 , "item" , 59243 , 1 )
			if $result != 0
				return
			endif
			
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0c )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1c )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2c )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3c )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0c )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1c )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2c )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3c )
				endif
			
			endif
			
			SetPlayerVar( -1 , 3263 , $round )
			return
		endif		
	endif
	
	
	//---------------------------------------------------------
	//???????30???
	
	if $lixian > 29
		if $nowtime != $time
			$result = SubPlayerInfo( -1 , "item" , 59243 , 1 )
			if $result != 0
				return
			endif
		
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0d )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1d )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2d )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3d )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0d )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1d )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2d )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3d )
				endif
			
			endif
			SetPlayerVar( -1 , 3953 , $nowtime )
			SetPlayerVar( -1 , 3263 , 1 )
			return
			
	//??????????????		
		else
			if $round > 3
				BC( "screen", "player", -1, "You can use Heart of Feedback 3 times a day." )
				return
			endif
			
			$result = SubPlayerInfo( -1 , "item" , 59243 , 1 )
			if $result != 0
				return
			endif
			
			if $lv < 60
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $exp0d )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $exp1d )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $exp2d )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $exp3d )
				endif
			else
		
				if $RankList < 50
					AddPlayerInfo( -1 , "exp" , $addexp0d )
				endif
			
				if $RankList >= 50
					if $RankList <= 69
						AddPlayerInfo( -1 , "exp" , $addexp1d )
					endif
				endif
			
				if $RankList >= 70
					if $RankList <= 89
						AddPlayerInfo( -1 , "exp" , $addexp2d )
					endif
				endif
			
				if $RankList >= 90
					AddPlayerInfo( -1 , "exp" , $addexp3d )
				endif
			
			endif
			
			SetPlayerVar( -1 , 3263 , $round )
			return
		endif		
	endif
	
	}