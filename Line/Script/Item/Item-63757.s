	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/22
	//		Author:???
	//		TaskName:Item-63757.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		//?2010??????????,??????
		//$result = HaveTitle( -1 , 21 )
		//if $result != 0
			//75????????
			//ReqAward( -1 , 6 , 1 )
			//BC( "screen", "player", -1, "GUID:06406000000" )
			//return
		//else
			//ReqAward( -1 , 8 , 1 )
			//BC( "screen", "player", -1, "GUID:06406000001" )
			//return
		//endif
		
		//2011??????,?75?100????3???
		$level = GetPlayerInfo( -1, "level" )
		if $level >= 100
		   ReqAward( -1, 11, 1 )
		   BC( "screen", "player", -1, "You have a lot of gifts to get.\nYou have used your Easter Card, check out what you got today.")
		   return
		endif
		
		if $level < 100
		   if $level >= 75
		   ReqAward( -1, 12, 1 )
		   BC( "screen", "player", -1, "You have a lot of gifts to get.\nYou have used your Easter Card, check out what you got today.")
		   return
		   endif
		endif
		
		if $level < 75
		   ReqAward( -1, 13, 1)
		   BC( "screen", "player", -1, "You have a lot of gifts to get.\nYou have used your Easter Card, check out what you got today.")
		   return
		endif
		
	}