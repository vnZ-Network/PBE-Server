	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-3
	//		Author:???
	//		TaskName:???????
	//		TaskID:mapid = 557
	//
	//****************************************0

	function OnCreate(){

	

	}

	function InitTimer(){
		
		$time1 = 1
		SetEctypeTimer(1,$time1,"Int")
		$time2 = 5
		SetEctypeTimer(9,$time2,"screen")

	}

	function Int(){
//???
		$playerid = GetEctypeVar(-1,110)
		$ectype_id = GetEctypeID($playerid,557)
		
		AddMonsterByFloat(52350,1,$ectype_id,163,126,0)
		
		$key = 1
		SetEctypeVar($ectype_id,$key,0)
		
//		BC( "screen" , "map" , $ectype_id , "GUID:04427000000" , $ectype_id )
		BC( "screen" , "map" , $ectype_id , "You entered Old Dragon Emperor's Cave. ")
		
	}

	function screen(){

		$playerid = GetEctypeVar(-1,110)
		$ectype_id = GetEctypeID($playerid,557)
		
		$get1 = GetEctypeVar($ectype_id,6)
		if $get1 > 0
			if $get1 < 4
				BC( "screen" , "map" , $ectype_id , "Follow the red arrow below.")
				StartEctypeTimer($ectype_id,9)
			endif
		endif
		
	}