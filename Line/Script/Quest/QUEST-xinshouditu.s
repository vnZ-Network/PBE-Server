	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/18
	//		Author:??
	//		TaskName:QUEST-xinshouditu.s
	//		TaskID:??????
	//
	//****************************************
	
	
	
	function OnTaskDone(){


		//    ????????
		$vip_id = GetRookieCardID(-1)  
		if $vip_id == 1801     		
			//?????????????
			//1:??
			//2:??
			//3:??
			//4:??
			//5:??
			//??0??
//			AddPlayerInfo( -1, "item", 64267, 1 )
			$pro = GetPlayerInfo( -1, "profession" )
			if $pro == 1
				AddPlayerInfo( -1, "item", 39265, 1 )
	 		//  AddPlayerInfo( -1, "item", 39266, 1 )
				AddPlayerInfo( -1, "item", 39267, 1 )
				AddPlayerInfo( -1, "item", 39268, 1 )
	 		    AddPlayerInfo( -1, "item", 39269, 1 )
			//	AddPlayerInfo( -1, "item", 39270, 1 ) 
			//	AddPlayerInfo( -1, "item", 39271, 1 ) 		
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 39272, 1 )
	 		//   AddPlayerInfo( -1, "item", 39273, 1 )
				AddPlayerInfo( -1, "item", 39274, 1 )
				AddPlayerInfo( -1, "item", 39275, 1 )
	 		    AddPlayerInfo( -1, "item", 39276, 1 )
				AddPlayerInfo( -1, "item", 39279, 1 ) 
			//	AddPlayerInfo( -1, "item", 39278, 1 ) 
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 39280, 1 )
	 		//    AddPlayerInfo( -1, "item", 39281, 1 )
				AddPlayerInfo( -1, "item", 39282, 1 )
				AddPlayerInfo( -1, "item", 39283, 1 )
	 		    AddPlayerInfo( -1, "item", 39284, 1 )
			//	AddPlayerInfo( -1, "item", 39285, 1 ) 
			//	AddPlayerInfo( -1, "item", 39286, 1 )
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 39287, 1 )
	 		//    AddPlayerInfo( -1, "item", 39288, 1 )
				AddPlayerInfo( -1, "item", 39289, 1 )
				AddPlayerInfo( -1, "item", 39290, 1 )
	 		    AddPlayerInfo( -1, "item", 39291, 1 )
			//	AddPlayerInfo( -1, "item", 39292, 1 ) 
			//	AddPlayerInfo( -1, "item", 39293, 1 )
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 39294, 1 )
	 		//  AddPlayerInfo( -1, "item", 39295, 1 )
				AddPlayerInfo( -1, "item", 39296, 1 )
				AddPlayerInfo( -1, "item", 39297, 1 )
	 		    AddPlayerInfo( -1, "item", 39298, 1 )
				AddPlayerInfo( -1, "item", 39301, 1 ) 
			//	AddPlayerInfo( -1, "item", 39300, 1 )
			endif
			
			if $pro == 6
				AddPlayerInfo( -1, "item", 39302, 1 )
	 		//  AddPlayerInfo( -1, "item", 39295, 1 )
				AddPlayerInfo( -1, "item", 39304, 1 )
				AddPlayerInfo( -1, "item", 39305, 1 )
	 		    AddPlayerInfo( -1, "item", 39306, 1 )
				AddPlayerInfo( -1, "item", 39309, 1 ) 
			//	AddPlayerInfo( -1, "item", 39300, 1 )
			endif			

			//??588???
			//AddPlayerInfo(-1 , "givepoint" , 294)	
			#name = GetPlayerInfo(-1 , "name")
			BC( "screen", "player", -1, "Greetings, inductee ",#name , "Welcome to Battle of the Immortals!  Enjoy your exclusive Inductee Set!" )
		endif

        //---------------------------------

//		$player_count = GetMapPlayerCount(128)
//		//??1??????
//		if $player_count < 200
//			FlyToMap( -1 ,128 ,37 ,79 )
//			return
//		endif                                               ---
//		$player_count = GetMapPlayerCount(147)
//		//??2??????
//		if $player_count < 200
//			FlyToMap( -1 ,147 ,37 ,79 )
//			return
//		endif
//		$player_count = GetMapPlayerCount(148)
//		//??3??????
//		if $player_count < 200
//			FlyToMap( -1 ,148 ,37 ,79 )
//			return
//		endif
//		//??????1
		FlyToMap( -1 ,128 ,36 ,85 )
		
		
	}