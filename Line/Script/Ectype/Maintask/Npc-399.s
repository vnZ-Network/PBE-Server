
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/19
	//		Author:???
	//		TaskName:Npc-399.s
	//		TaskID:  
	//****************************************
	
	function OnRequest(){
	
		DisableNpcOption(0)
		DisableNpcOption(1)
//		DisableNpcOption(2)
		
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		$Now_Year =  GetSystemTime( "year" )
		
		if $Now_Year == 2012
			$monthadd = $Now_Month * 100
			$dayadd = $monthadd + $Now_Mday
			if $dayadd >= 731
				DisableNpcOption(3)
			else
//				DisableNpcOption(4)
			endif
		else
			DisableNpcOption(3)
		endif
		
	}
		
	function OnOption0(){	
	
		BC( "dialogbox" , "player" , -1 , "You can find your introduction ID in the Introduction menu, located on the bottom of the toolbar. Players that enter your introduction ID will become your inductees. Share your introduction ID with as many friends as you like!" )
		
		
	}

	function OnOption1(){
	
		
		BC( "dialogbox" , "player" , -1 , "You can only use one recruiter's introduction ID for each character. It can be used either during character creation or in the introduction menu as long as your character is LV29 or lower." )
		
	}
	function OnOption2(){
	
		$time = GetPlayerVar(-1 , 3272)
		$yweek = GetNowWeek()
		
		if $yweek == $time
			BC( "dialogbox" , "player" , -1 , "You have received the gift this week" )
			return
		endif
	
		$spreadlv = GetPlayerInfo ( -1,"spreadlevel" )
		$givep = $spreadlv * 100
		if $givep == 0
			BC( "dialogbox" , "player" , -1 , "You can't collect your prize until your recruiter level is at least LV1!" )
			return
		else
			AddPlayerInfo( -1, "givepoint", $givep)
			BC( "dialogbox" , "player" , -1 , "You successfully collected your recruiter prize!" , $givep , " Salary" )
			SetPlayerVar( -1 ,3272, $yweek)
		endif
		
		
	}

	function OnOption3(){
		
		
//		$Now_Mday =  GetSystemTime( "mday" )
//		$Now_Month =  GetSystemTime( "month" )
//		$Now_Year =  GetSystemTime( "year" )
//		
//		if $Now_Year == 2012
//			$monthadd = $Now_Month * 100
//			$dayadd = $monthadd + $Now_Mday
//			if $dayadd >= 731
//				return
//			endif
//		else
//			return
//		endif
//		
//		
//		$week = GetSystemTime( "week" )
//		//---------??????
////		$time = GetPlayerVar(-1 , 3964)
//
//		//---------????????
//		$spreadhave = GetPlayerVar(-1 , 3819)
//
//		//---------???????????
//		$lastlv = GetPlayerVar(-1 , 3272)
//
//		//---------????????
//		$maxlv = GetPlayerVar(-1 , 3288)
//
//		//---------?????????
//		$weekamount = GetPlayerVar(-1 , 3971)
//
//		$systime = GetSystemTime( "yday")
//
//		$time2 = $time + 1
//		//---------???????
//		$up = GetPlayerInfo( -1, "spreadup" )
//		//---------???????
//		$down = GetPlayerInfo( -1, "spreaddown" )
//		//---------???????
//		$spreadlv = GetPlayerInfo ( -1,"spreadlevel" )
//		
//			
//
//
//
////---------???????????????????????
//		
//
//		if $maxlv == 0
//			$maxlv = $spreadlv
//			SetPlayerVar( -1 ,3288, $maxlv, )
//			//BC( "chat" , "player" , -1 , "GUID:04614000006",$maxlv, )
//		endif
////---------?????????,?????????????????
//		if $spreadlv > $maxlv
//			$maxlv = $spreadlv
//			SetPlayerVar( -1 ,3288, $maxlv, )
//			//BC( "chat" , "player" , -1 , "GUID:04614000007",$maxlv, )
//		endif
//		
////---------?????????????????????,??????????????????,????????????
//
//		if $spreadlv < $maxlv
//			
//			$spreadlv = $maxlv
//			//BC( "chat" , "player" , -1 , "GUID:04614000008",$maxlv, )
//		endif
//		
////------------------------------------------------------------------------
//		//---------????????
////		if $week != 6
////			if $week != 0
////				BC( "dialogbox" , "player" , -1 , "GUID:04614000009" )
////				return
////			endif
////		endif
////------------------------------------------------------------------------
//		//---------??????
////		if $systime == $time
////			BC( "dialogbox" , "player" , -1 , "You have received the gift this week" )
////			return
////		endif
////		if $systime == $time2
////			BC( "dialogbox" , "player" , -1 , "You have received the gift this week" )
////			return
////		endif
////------------------------------------------------------------------------
//		//----------?????????????????????????6??????2
//		if $up == 0
//			$a1 = $lv * $lv
//			$a2 = $a1 + 1125 
//			$a3 = $a2 * 300
//			$a4 = $a3 / 6750
//			$a5 = $a4 * 2
//			$b2 = $a1 + 20700
//			$b3 = $b2 * 300
//			$b4 = $b3 / 26325
//			$b5 = $b4 * 2
// 			if $lv < 75
//				$spreadupamount = $a5 
//			else
//				$spreadupamount = $b5	
//			endif
//		else
//			$spreadupamount = 0
//		endif
////------------------------------------------------------------------------
//		//---------????????????????
//		if $down == 0
//			if $spreadlv == 1
//				$spreaddownamount = 100 * 12
//			endif
//
//			if $spreadlv == 2
//				$spreaddownamount = 164 * 12
//			endif
//
//			if $spreadlv == 3
//				$spreaddownamount = 245 * 12
//			endif
//
//			if $spreadlv == 4
//				$spreaddownamount = 355 * 12
//			endif
//
//			if $spreadlv == 5
//				$spreaddownamount = 500 * 12
//			endif
//
//			if $spreadlv == 6
//				$spreaddownamount = 682 * 12
//			endif
//
//			if $spreadlv == 7
//				$spreaddownamount = 900 * 12
//			endif
//
//			if $spreadlv == 8
//				$spreaddownamount = 1191 * 12
//			endif
//
//			if $spreadlv == 9
//				$spreaddownamount = 1736 * 12
//			endif
//
//			if $spreadlv == 10
//				$spreaddownamount = 2464 * 12
//			endif
//
//			if $spreadlv == 11
//				$spreaddownamount = 3373 * 12
//			endif
//
//			if $spreadlv == 12
//				$spreaddownamount = 4464 * 12
//			endif
//
//			if $spreadlv == 13
//				$spreaddownamount = 5736 * 12
//			endif
//
//			if $spreadlv == 14
//				$spreaddownamount = 7191 * 12
//			endif
//
//			if $spreadlv == 15
//				$spreaddownamount = 8827 * 12
//			endif
//
//			if $spreadlv == 16
//				$spreaddownamount = 10645 * 12
//			endif
//
//			if $spreadlv == 17
//				$spreaddownamount = 12645 * 12
//			endif
//
//			if $spreadlv == 18
//				$spreaddownamount = 14827 * 12
//			endif
//
//			if $spreadlv == 19
//				$spreaddownamount = 17191 * 12
//			endif
//
//			if $spreadlv == 20
//				$spreaddownamount = 20100 * 12
//			endif
//
//			if $spreadlv == 21
//				$spreaddownamount = 23100 * 12
//			endif
//
//			if $spreadlv == 22
//				$spreaddownamount = 25900 * 12
//			endif
//
//			if $spreadlv == 23
//				$spreaddownamount = 28500 * 12
//			endif
//
//			if $spreadlv == 24
//				$spreaddownamount = 30900 * 12
//			endif
//
//			if $spreadlv == 25
//				$spreaddownamount = 33100 * 12
//			endif
//
//			if $spreadlv == 26
//				$spreaddownamount = 35100 * 12
//			endif
//
//			if $spreadlv == 27
//				$spreaddownamount = 36900 * 12
//			endif
//
//			if $spreadlv == 28
//				$spreaddownamount = 38500 * 12
//			endif
//
//			if $spreadlv == 29
//				$spreaddownamount = 39900 * 12
//			endif
//
//			if $spreadlv == 30
//				$spreaddownamount = 41000 * 12
//			endif
//
//		else	 
//			$spreaddownamount = 0
//		endif
////------------------------------------------------------------------------
//		//-------????????
//		$spread = $spreadupamount + $spreaddownamount
//
////-------------------------------------------------------
//		$result1 = HaveTitle( -1, 7 )
//		$result2 = HaveTitle( -1, 8 )
//		$result3 = HaveTitle( -1, 9 )
//		$result4 = HaveTitle( -1, 10 )
//		$result5 = HaveTitle( -1, 11 )
//		$result6 = HaveTitle( -1, 12 )
//		if $result1 == 0
//			$mastergivepoint = 400
//		endif
//
//		if $result2 == 0
//			$mastergivepoint = 800
//		endif
//
//		if $result3 == 0
//			$mastergivepoint = 1200
//		endif
//
//		if $result4 == 0
//			$mastergivepoint = 1600
//		endif
//
//		if $result5 == 0
//			$mastergivepoint = 2000
//		endif
//
//		if $result6 == 0
//			$mastergivepoint = 2500
//		endif
////------------------------------------------------------------------------
//		//------??????????0???????????????
//		$sum = $spread + $mastergivepoint
//
//		if $sum == 0
//
//			BC( "dialogbox" , "player" , -1 , "GUID:04614000012" )
//			return
//		endif
////------------------------------------------------------------------------
//		if $down != 0
////				AddPlayerInfo( -1, "givepoint", $spreadupamount, )
////				AddPlayerInfo( -1, "givepoint", $mastergivepoint, )
////				BC( "dialogbox" , "player" , -1 , "You have received gifts! Rewards for master: " , $mastergivepoint ,"GUID:04614000014" , $spreadupamount ," Salary" )
////				SetPlayerVar( -1 ,3964, $systime, )
//			BC( "dialogbox" , "player" , -1 , "GUID:04614000016" )
//			return
//		endif

////----------------------------??????
//           $sub = $spreaddownamount - $spreadhave
//		
//		if $sub < 0
//			$weekamount = $spreaddownamount / 12
//			
//			SetPlayerVar( -1 ,3819, $spreaddownamount ,)
//			SetPlayerVar( -1 ,3971, $weekamount ,)
//			SetPlayerVar( -1 ,3272, $spreadlv, )
//                       // BC( "chat" , "player" , -1 , "GUID:04614000017",$spreaddownamount,"GUID:04614000018",$weekamount,"GUID:04614000019",$spreadlv, )
//			
//		endif
////---------????
//		//---------????????
//		$spreadhave = GetPlayerVar(-1 , 3819)
//		//---------?????????
//		$weekamount = GetPlayerVar(-1 , 3971)
//		//---------???????????
//		$lastlv = GetPlayerVar(-1 , 3272) 
////		BC( "chat" , "player" , -1 , "GUID:04614000020",$spreadhave,"GUID:04614000021",$weekamount,"GUID:04614000022",$lastlv, )
//		//BC( "chat" , "player" , -1 , "GUID:04614000023",$spreadlv, )
//			
//
//			
//		    
//
////------------------------------------------------------------------------
//		//------------???????
//		if $spreadhave == 0
//			if $lastlv == 0
////				$weekamount = $spreaddownamount / 12
//				$weekamount = $spreaddownamount
//				AddPlayerInfo( -1, "spreadgold", $weekamount, )
////				AddPlayerInfo( -1, "givepoint", $mastergivepoint, )
////				AddPlayerInfo( -1, "givepoint", $spreadupamount, )
////				BC( "dialogbox" , "player" , -1 , "You have received gifts! Rewards for master: " , $mastergivepoint ,"GUID:04614000025" , $weekamount ,"GUID:04614000026"  , $spreadupamount , " Salary" )
//				BC( "dialogbox" , "player" , -1 , "GUID:04614000028" , $weekamount ,"GUID:04614000029" )
//				SetPlayerVar( -1 ,3819, $weekamount ,)
////				SetPlayerVar( -1 ,3964, $systime, )
//				SetPlayerVar( -1 ,3272, $spreadlv, )
//				SetPlayerVar( -1 ,3971, $weekamount ,)
//				return
//			endif
//		endif
////------------------------------------------------------------------------
//		//???????????????????????????
//		
//		$spreadrest = $spreaddownamount - $spreadhave
//		if $lastlv == $spreadlv
//			if $spreadrest > 0
//				if $spreadrest > $weekamount
//					//??????? ????????
//					//????????? 2012-7-8
//					$month = GetSystemTime("month")
//					$mday = GetSystemTime("mday")
//					$monthday = $month * 100
//					$monthday = $monthday + $mday
//					if $monthday > 706
//						$spreadhave = $spreadhave + $spreadrest
//						AddPlayerInfo( -1, "spreadgold", $spreadrest, )
////						AddPlayerInfo( -1, "givepoint", $mastergivepoint, )
////						AddPlayerInfo( -1, "givepoint", $spreadupamount, )
////						BC( "dialogbox" , "player" , -1 , "You have received gifts! Rewards for master: " , $mastergivepoint ,"GUID:04614000031" , $spreadrest ,"GUID:04614000032" , $spreadupamount , "GUID:04614000033" )
//						BC( "dialogbox" , "player" , -1 , "GUID:04614000034" , $spreadrest ,"GUID:04614000035" )
//						SetPlayerVar( -1 ,3819, $spreadhave, )
////						SetPlayerVar( -1 ,3964, $systime ,)
//						SetPlayerVar( -1 ,3971, $weekamount ,)
//						return
//					else
////						$spreadhave = $spreadhave + $weekamount
////						AddPlayerInfo( -1, "spreadgold", $weekamount, )
////						AddPlayerInfo( -1, "givepoint", $mastergivepoint, )
////						AddPlayerInfo( -1, "givepoint", $spreadupamount, )
////						BC( "dialogbox" , "player" , -1 , "You have received gifts! Rewards for master: " , $mastergivepoint ,"GUID:04614000037" , $weekamount ,"GUID:04614000038" , $spreadupamount , " Salary" )
////						SetPlayerVar( -1 ,3819, $spreadhave, )
////						SetPlayerVar( -1 ,3964, $systime ,)
////						SetPlayerVar( -1 ,3971, $weekamount ,)
//						return
//					endif
//				else
//					//???????????? ????????
//					$spreadhave = $spreadhave + $spreadrest
//					AddPlayerInfo( -1, "spreadgold", $spreadrest, )
////					AddPlayerInfo( -1, "givepoint", $mastergivepoint, )
////					AddPlayerInfo( -1, "givepoint", $spreadupamount, )
//					BC( "dialogbox" , "player" , -1 , "GUID:04614000040" , $spreadrest  ,"GUID:04614000041" )
//					SetPlayerVar( -1 ,3819, $spreadhave, )
////					SetPlayerVar( -1 ,3964, $systime ,)
//					SetPlayerVar( -1 ,3272, $spreadlv ,)
//					return
//				endif
//			else
//				//???????? ???=0 ??????????,??????
//				$spread1 = $spreaddownamount / 72
//				$spread = 500 + $spread1
////				AddPlayerInfo( -1, "givepoint", $spread, )
////				AddPlayerInfo( -1, "givepoint", $mastergivepoint, )
////				AddPlayerInfo( -1, "givepoint", $spreadupamount, )
////				BC( "dialogbox" , "player" , -1 , "You have received gifts! Rewards for master: " , $mastergivepoint ,"GUID:04614000043" , $spread ,"GUID:04614000044", $spreadupamount , " Salary" )
//				BC( "dialogbox" , "player" , -1 , "GUID:04614000046" )
////				SetPlayerVar( -1 ,3964, $systime ,)
//				return
//			endif
//		else
//			//??????????????????12??
//			//????????? 2012-7-8
//			$month = GetSystemTime("month")
//			$mday = GetSystemTime("mday")
//			$monthday = $month * 100
//			$monthday = $monthday + $mday
//			if $monthday > 706
//				$spreadhave = $spreadhave + $spreadrest
//				AddPlayerInfo( -1, "spreadgold", $spreadrest, )
////				AddPlayerInfo( -1, "givepoint", $mastergivepoint, )
////				AddPlayerInfo( -1, "givepoint", $spreadupamount, )
////				BC( "dialogbox" , "player" , -1 , "You have received gifts! Rewards for master: " , $mastergivepoint ,"GUID:04614000048" , $spreadrest ,"GUID:04614000049" , $spreadupamount , "GUID:04614000050" )
//				BC( "dialogbox" , "player" , -1 , "GUID:04614000051" , $spreadrest ,"GUID:04614000052" )
//				SetPlayerVar( -1 ,3819, $spreadhave, )
////				SetPlayerVar( -1 ,3964, $systime ,)
//				SetPlayerVar( -1 ,3272, $spreadlv ,)
//				SetPlayerVar( -1 ,3971, $weekamount ,)
//			else
////				$spreadrest2 = $spreaddownamount - $spreadhave
////				$weekamount = $spreadrest2 / 12
////				$spreadhave = $spreadhave + $weekamount 
////				AddPlayerInfo( -1, "spreadgold", $weekamount, )
////				AddPlayerInfo( -1, "givepoint", $mastergivepoint, )
////				AddPlayerInfo( -1, "givepoint", $spreadupamount, )
////				BC( "dialogbox" , "player" , -1 , "You have received gifts! Rewards for master: " , $mastergivepoint ,"GUID:04614000054" , $weekamount  ,"GUID:04614000055", $spreadupamount , " Salary"  )
////				SetPlayerVar( -1 ,3819, $spreadhave , )
////				SetPlayerVar( -1 ,3964, $systime ,)
////				SetPlayerVar( -1 ,3272, $spreadlv ,)
////				SetPlayerVar( -1 ,3971, $weekamount ,)
//			endif
//		endif



	}

	function OnOption4(){

		$time = GetPlayerVar(-1 , 3964)
		$yweek = GetNowWeek()
		
		if $yweek == $time
			BC( "dialogbox" , "player" , -1 , "You have received the gift this week" )
			return
		endif


		$result1 = HaveTitle( -1, 7 )
		$result2 = HaveTitle( -1, 8 )
		$result3 = HaveTitle( -1, 9 )
		$result4 = HaveTitle( -1, 10 )
		$result5 = HaveTitle( -1, 11 )
		$result6 = HaveTitle( -1, 12 )
		if $result1 == 0
			$mastergivepoint = 400
		endif
		if $result2 == 0
			$mastergivepoint = 800
		endif
		if $result3 == 0
			$mastergivepoint = 1200
		endif
		if $result4 == 0
			$mastergivepoint = 1600
		endif
		if $result5 == 0
			$mastergivepoint = 2000
		endif
		if $result6 == 0
			$mastergivepoint = 2500
		endif
		
		
		if $mastergivepoint == 0
			BC( "dialogbox" , "player" , -1 , "You can't collect your prize until you've become a master!" )
			return
		else
			AddPlayerInfo( -1, "givepoint", $mastergivepoint)
			BC( "dialogbox" , "player" , -1 , "You have received gifts! Rewards for master: " , $mastergivepoint , " Salary" )
			SetPlayerVar( -1 ,3964, $yweek)
		endif
		
	}
	
