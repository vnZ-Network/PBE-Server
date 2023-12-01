  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Milya-Ectype-Npc-235.s
	//		TaskID: ?? ?????????
	//
	//****************************************

	function OnRequest(){
		DisableNpcOption(2)
		$Accept = IsTaskAccept( -1 , 159 )
		if $Accept != 0
			DisableNpcOption(1)
		endif
		$Accept = IsTaskAccept( -1 , 1691 )
		if $Accept != 0
			DisableNpcOption(3)
		endif

	}
	
	function OnOption0(){
	
		FlyToMap( -1 , 245 , 19 , 19 )
		
	}
	
	function OnOption1(){
	
		$ectype_id = GetEctypeID( -1 , 242 )
		$Accept = IsTaskAccept( -1 , 159 )
		if $Accept != 0
			return
		endif
		$result = GetEctypeVar( $ectype_id , 9 )
		if $result == 1
			return
		endif
		
		AddMonsterByFloat( 55074 , 2 , $ectype_id , 219 , 163 , 1 )
		AddMonsterByFloat( 55074 , 2 , $ectype_id , 214 , 158 , 1 )
		AddMonsterByFloat( 55074 , 2 , $ectype_id , 214 , 169 , 1 )
		AddMonsterByFloat( 55074 , 2 , $ectype_id , 207 , 163 , 1 )
		
		SetEctypeVar( $ectype_id , 9 , 1 )
		BC( "screen" , "map" , $ectype_id , "Strange sounds came from the grave." )
		BC( "chat" , "map" , $ectype_id , "Strange sounds came from the grave." )
		
	}
	
	function OnOption2(){
	
//		$Accept = IsTaskAccept( -1 , 3301 )
//		if $Accept == 0
//			return
//		endif
//		
//		$time =  GetSystemTime( "yday" )
//		$lasttime = GetPlayerVar( -1 ,3745 )
//		if $time == $lasttime
//			BC( "screen", "player", -1, "GUID:04570000002" )
//		else
//			AcceptTask( -1 , 3301 )
//			SetPlayerVar( -1 ,3745 , $time )
//		endif
		
	}
	function OnOption3(){
	
		$Accept = IsTaskAccept( -1 , 1691 )
		if $Accept != 0
			return
		endif
		$info = SubPlayerInfo( -1, "item", 12698 , 1  )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1, "item", 12699 , 1  )
	}