	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/07/24
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫Ectype-565-Init.s
	//		TaskID£∫
	//
	//****************************************
	
	function OnCreate(){
		


		
	}
	
	function InitTimer(){
		
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		$result = SetEctypeTimer( 2 , 1 , "EctypeTime2" )
		$result = SetEctypeTimer( 3 , 30 , "EctypeTime3" )
		$result = SetEctypeTimer( 4 , 60 , "EctypeTime4" )
		$result = SetEctypeTimer( 5 , 90 , "EctypeTime5" )
		$result = SetEctypeTimer( 6 , 1 , "EctypeTime6")
		$result = SetEctypeTimer( 7 , 45 , "EctypeTime7")
		$result = SetEctypeTimer( 8 , 42 , "EctypeTime8")
		$result = SetEctypeTimer( 9 , 5 , "EctypeTime9")
		StartEctypeTimer ($ectype_ID,1)
		
	}
	
	function EctypeTime1(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		
		$task1 = IsTaskDone(-1,403)
		
		AddNpcByPos( 933, $ectype_ID, 81, 75, 180000, 0 )
		AddNpcByPos( 934, $ectype_ID, 99, 78, 180000, 0 )
		AddNpcByPos( 935, $ectype_ID, 88, 39, 180000, 0 )
		AddNpcByPos( 936, $ectype_ID, 57, 54, 180000, 0 )
		AddNpcByPos( 937, $ectype_ID, 58, 83, 180000, 0 )
		
		AddMonsterByFloat(30722,2,$ectype_ID,255,144,2)
//		AddMonsterByFloat(30723,2,$ectype_ID,255,139,2)
		AddMonsterByFloat(30722,2,$ectype_ID,253,130,2)
//		AddMonsterByFloat(30723,2,$ectype_ID,249,124,2)
		AddMonsterByFloat(30722,2,$ectype_ID,237,124,2)
//		AddMonsterByFloat(30723,2,$ectype_ID,238,117,2)
		AddMonsterByFloat(30722,2,$ectype_ID,240,105,2)
//		AddMonsterByFloat(30723,2,$ectype_ID,234,116,2)

		DeleteNPC(1127,-1)
		
		
	}
	
	function EctypeTime2(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		
		
		$shu = GetEctypeVar($ectype_ID,3)
		PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)	
		while $shu < 50
			$x = RandomNumber(200,220)
			$y = RandomNumber(162,181)
			$shu = $shu + 1
			AddMonsterByFloat(30707,1,$ectype_ID,$x,$y,0,$playerid)
			SetEctypeVar($ectype_ID,3,$shu)
		endwhile
		
		
	}	
	
	function EctypeTime3(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		
		
		$shu = GetEctypeVar($ectype_ID,4)
		PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)	
		while $shu < 50
			$x = RandomNumber(200,220)
			$y = RandomNumber(162,181)
			$shu = $shu + 1
			AddMonsterByFloat(30707,1,$ectype_ID,$x,$y,0,$playerid)
			SetEctypeVar($ectype_ID,4,$shu)
		endwhile
		
		
	}	
	
	function EctypeTime4(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		
		
		$shu = GetEctypeVar($ectype_ID,5)
		PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)	
		while $shu < 50
			$x = RandomNumber(200,220)
			$y = RandomNumber(162,181)
			$shu = $shu + 1
			AddMonsterByFloat(30707,1,$ectype_ID,$x,$y,0,$playerid)
			SetEctypeVar($ectype_ID,5,$shu)
		endwhile
		
		
	}	
	
	function EctypeTime5(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		
		
		$shu = GetEctypeVar($ectype_ID,6)
		PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)	
		while $shu < 50
			$x = RandomNumber(200,220)
			$y = RandomNumber(162,181)
			$shu = $shu + 1
			AddMonsterByFloat(30707,1,$ectype_ID,$x,$y,0,$playerid)
			SetEctypeVar($ectype_ID,6,$shu)
		endwhile
		
		
	}	
	
	function EctypeTime6(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		
		$zhi = GetEctypeVar($ectype_ID,7)
		if $zhi > 0
			$zhi = $zhi - 1
//			BC("screen","map",$ectype_ID,"===",$zhi)
			SetEctypeVar($ectype_ID,7,$zhi)
			StartEctypeTimer($ectype_ID,6)
		else
			StartEctypeTimer($ectype_ID,7)
			StartEctypeTimer($ectype_ID,8)
			PlayEffect(-1,"skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 1)
			//DeleteMonster($ectype_ID,30730)
			AddMonsterByFloat(30713,1,$ectype_ID,150,216,0,-1,90)
			AddMonsterByFloat(30710,1,$ectype_ID,145,213,0,-1,90)
			AddMonsterByFloat(30711,1,$ectype_ID,150,213,0,-1,90)
			AddMonsterByFloat(30712,1,$ectype_ID,155,213,0,-1,90)
		endif
		
	}
	
	function EctypeTime7(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		PlayEffect(-1,"skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 1)
		//DeleteMonster($ectype_ID,30730)
		//DeleteMonster($ectype_ID,30703)
		//DeleteMonster($ectype_ID,30709)
		AddMonsterByFloat(30725,1,$ectype_ID,150,223,0,-1)
		
	}
	
	function EctypeTime8(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		StartEctypeTimer($ectype_ID,9)
		AddMonsterByFloat(30732,1,$ectype_ID,152,218,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,145,219,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,158,216,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,158,210,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,161,217,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,160,224,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,168,215,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,149,211,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,143,210,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,141,215,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,140,221,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,138,215,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,139,209,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,133,217,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,133,209,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,129,207,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,124,208,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,139,202,0,-1)
		AddMonsterByFloat(30732,1,$ectype_ID,151,229,0,-1)
		
	}
	
	function EctypeTime9(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,565)
		DeleteMonster($ectype_ID,30730)
		DeleteMonster($ectype_ID,30703)
		DeleteMonster($ectype_ID,30709)
		
	}