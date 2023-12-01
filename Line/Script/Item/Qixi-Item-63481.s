	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/13
	//		Author:???
	//		TaskName:Qixi-Item-63481.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		//30?????
		$lv = GetPlayerInfo(-1, "level")
		if $lv < 30
			BC( "screen", "player", -1, "Cannot use that until LV30." )
			return	
		endif
		
		
		//???????
		$nullitem = GetPlayerInfo(-1, "nullitem", 0)
		if $nullitem < 2
			BC( "screen", "player", -1, "You need at least 2 empty slots in your bag." )
			return	
		endif
		
		//?????????,151
		$mapid = GetPlayerInfo(-1, "mapid")
		if $mapid != 151
			BC( "screen", "player", -1, "Only can be used in a dream. Enter the Realm of Dreams through the Teleporter in Atlantis." )
			return
		endif
		
		//???????2??
		$partycount = GetTeamMemberCount(-1)
		if $partycount != 2
			BC( "screen", "player", -1, "Unable to use. You must be in a 2-member-party, in which the other member must be of the opposite gender, and with a level up to 20 higher or lower than yours." )
			return
		endif
		
		//??2???????
		$len = GetTeamAreaSize( -1 )
		if $len > 10
			BC( "screen", "player", -1, "Unable to use Dust of Dreams. Party member is too far." )
			return
		endif
		
		
		$id1 = GetPlayerID()
		$id2 = GetTeamHeaderID( -1 )
		//????????
		if $id1 == $id2
			$pid1 = GetTeamMemberID( -1 , 0 )
			$pid2 = GetTeamMemberID( -1 , 1 )
			$pid3 = GetTeamMemberID( -1 , 2 )
			$pid4 = GetTeamMemberID( -1 , 3 )
			$pid5 = GetTeamMemberID( -1 , 4 )
			$pid6 = GetTeamMemberID( -1 , 5 )
			//???ID,???????ID
			if $pid1 > 0
				if $pid1 != $id1
					$id1 = $pid1
				endif
			endif
			
			if $id1 == $id2
				if $pid2 > 0
					if $pid2 != $id1
						$id1 = $pid2
					endif
				endif
			endif
			
			if $id1 == $id2
				if $pid3 > 0
					if $pid3 != $id1
						$id1 = $pid3
					endif
				endif
			endif
				
			if $id1 == $id2
				if $pid4 > 0
					if $pid4 != $id1
						$id1 = $pid4
					endif
				endif
			endif	
			
			if $id1 == $id2
				if $pid5 > 0
					if $pid5 != $id1
						$id1 = $pid5
					endif
				endif
			endif
			
			if $id1 == $id2
				if $pid6 > 0
					if $pid6 != $id1
						$id1 = $pid6
					endif
				endif
			endif
		endif
		
		
		
		//???????20????????
		$sex1 = GetPlayerInfo( $id1 , "sex" )
		$sex2 = GetPlayerInfo( $id2 , "sex" )
		$level1 = GetPlayerInfo( $id1 , "level" )
		$level2 = GetPlayerInfo( $id2 , "level" )
		if $sex1 == $sex2
			BC( "screen", "player", -1, "Unable to use. You must be in a 2-member-party, in which the other member must be of the opposite gender, and with a level up to 20 higher or lower than yours." )
			return
		endif
		

		if $level1 > $level2
			$min = $level1 - $level2
			if $min > 20
				BC( "screen", "player", -1, "Unable to use. You must be in a 2-member-party, in which the other member must be of the opposite gender, and with a level up to 20 higher or lower than yours." )
				return
			endif
		else
			$min = $level2 - $level1
			if $min > 20
				BC( "screen", "player", -1, "Unable to use. You must be in a 2-member-party, in which the other member must be of the opposite gender, and with a level up to 20 higher or lower than yours." )
				return
			endif
		endif
		
		
		//??????
		$id3 = 0
		$id4 = 0
		if $sex1 == 0
			$id3 = $id1
			$id4 = $id2
		else
			$id3 = $id2
			$id4 = $id1
		endif
		
		#name1 = GetPlayerInfo( $id3 , "name" )
		#name2 = GetPlayerInfo( $id4 , "name" )
		//???????
		$nt = RandomNumber( 0 , 11 )
		if $nt == 0
			BC( "screen", "map", 151, "" , #name1 , "" , " and " , "" ,  #name2 , "" , "Dust of Dreams consumed. The emotion in the dreams now becomes the most realistic existence." )
			BC( "chat", "map", 151, "" , #name1 , "" , " and " , "" ,  #name2 , "" , "Dust of Dreams consumed. The emotion in the dreams now becomes the most realistic existence." )
		endif
		if $nt == 1
			BC( "screen", "map", 151, "" , #name1 , " stares lovingly at " ,  #name2 , "" , ", expecting to say something... " )
			BC( "chat", "map", 151, "" , #name1 , " stares lovingly at " ,  #name2 , "" , ", expecting to say something... " )
		endif
		if $nt == 2	
			BC( "screen", "map", 151, "The distance has made the hearts of " , #name1 , "" , "and " ,  #name2 , "closer" )
			BC( "chat", "map", 151, "The distance has made the hearts of " , #name1 , "" , "and " ,  #name2 , "closer" )
		endif
		if $nt == 3
			BC( "screen", "map", 151, "" , #name1 , " needs " ,  #name2 , ", just like he needs to breathe" )
			BC( "chat", "map", 151, "" , #name1 , " needs " ,  #name2 , ", just like he needs to breathe" )
		endif	
		if $nt == 4	
			BC( "screen", "map", 151, "" , #name1 , " wants to hold " ,  #name2 , "s hand, and never let it go." )
			BC( "chat", "map", 151, "" , #name1 , " wants to hold " ,  #name2 , "s hand, and never let it go." )
		endif
		if $nt == 5
			BC( "screen", "map", 151, "" , #name1 , "" , "is willing to sacrifice the life any time to be together with " ,  #name2 , "" )
			BC( "chat", "map", 151, "" , #name1 , "" , "is willing to sacrifice the life any time to be together with " ,  #name2 , "" )

		endif
		if $nt == 6	
			BC( "screen", "map", 151, "" , #name1 , " loves " ,  #name2 , ", and does that need a reason? Does it really need a reason?" )
			BC( "chat", "map", 151, "" , #name1 , " loves " ,  #name2 , ", and does that need a reason? Does it really need a reason?" )
		endif	
		if $nt == 7
			BC( "screen", "map", 151, "The largest distance is not between life and death. It is when " , #name1 , "" , "is facing" , "" ,  #name2 , "without knowing that I love you."  )
			BC( "chat", "map", 151, "The largest distance is not between life and death. It is when " , #name1 , "" , "is facing" , "" ,  #name2 , "without knowing that I love you."  )
		endif	
		if $nt == 8	
			BC( "screen", "map", 151, "Once there was the most beautiful love, but " , #name1 , "" , "let it go. If he could have the chance again, he will look into the eyes of" , "" ,  #name2 , "" , "and say 'I love you! If this love needs a duration, I wish it would be 10000 years!'" )
			BC( "chat", "map", 151, "Once there was the most beautiful love, but " , #name1 , "" , "let it go. If he could have the chance again, he will look into the eyes of" , "" ,  #name2 , "" , "and say 'I love you! If this love needs a duration, I wish it would be 10000 years!'" )

		endif	
		if $nt == 9	
			BC( "screen", "map", 151, "In " , #name1 , "" , "s heart, there is only one place, which has already been taken by " ,  #name2 , "" , "forever and ever." )
			BC( "chat", "map", 151, "In " , #name1 , "" , "s heart, there is only one place, which has already been taken by " ,  #name2 , "" , "forever and ever." )
		endif
		if $nt == 10	
			BC( "screen", "map", 151, "If love is a battle, I would not know whether " , #name2 , "" , " would win. But I do know that " , "" ,  #name1 , "" , " has lost since the beginning." )
			BC( "chat", "map", 151, "If love is a battle, I would not know whether " , #name2 , "" , " would win. But I do know that " , "" ,  #name1 , "" , " has lost since the beginning." )

		endif
		if $nt == 11
			BC( "screen", "map", 151, "" , #name1 , "" , " and " , "" ,  #name2 , "" , "With Dust of Dreams, they have acquired the eternal love." )
			BC( "chat", "map", 151, "" , #name1 , "" , " and " , "" ,  #name2 , "" , "With Dust of Dreams, they have acquired the eternal love." )
		endif
		
		
		//???????,???????
		//$result = DropMonsterItems( -1 , 90021 )
		
		//????????
		//100%?????2????
		$result = AddPlayerInfo( -1 , "item" , 19 , 2 )
		
		$award = RandomNumber( 1 , 10000 )
		//?????(?)
		if $award <= 50
			$result = AddPlayerInfo( -1 , "item" , 36435 , 1 )
		endif
		//?????(?)
		if $award > 50
			if $award <= 100
				$result = AddPlayerInfo( -1 , "item" , 36436 , 1 )
			endif
		endif
		//?????
		if $award > 100
			if $award <= 350
				$result = AddPlayerInfo( -1 , "item" , 64402 , 1 )
			endif
		endif
		//??
		if $award > 1000
			if $award <= 2000
				$result = AddPlayerInfo( -1 , "item" , 60029 , 1 )
			endif
		endif
		//??????
		if $award > 2000
			if $award <= 4000
				$result = AddPlayerInfo( -1 , "item" , 64375 , 1 )
			endif
		endif
		//4????
		if $award > 4000
			if $award <= 5000
				$yanhuabao = RandomNumber( 1 , 4 )
				if $yanhuabao == 1
					$result = AddPlayerInfo( -1 , "item" , 61088 , 1 )
				endif
				if $yanhuabao == 2
					$result = AddPlayerInfo( -1 , "item" , 61089 , 1 )
				endif
				if $yanhuabao == 3
					$result = AddPlayerInfo( -1 , "item" , 61090 , 1 )
				endif
				if $yanhuabao == 4
					$result = AddPlayerInfo( -1 , "item" , 61091 , 1 )
				endif
			endif
		endif
		//4???
		if $award > 5000
			if $award <= 7000
				$xinqing = RandomNumber( 1 , 4 )
				if $xinqing == 1
					$result = AddPlayerInfo( -1 , "item" , 61067 , 1 )
				endif
				if $xinqing == 2
					$result = AddPlayerInfo( -1 , "item" , 61068 , 1 )
				endif
				if $xinqing == 3
					$result = AddPlayerInfo( -1 , "item" , 61069 , 1 )
				endif
				if $xinqing == 4
					$result = AddPlayerInfo( -1 , "item" , 61070 , 1 )
				endif
			endif
		endif
		//4???
		if $award > 7000
			if $award <= 10000
				$xinqing = RandomNumber( 1 , 4 )
				if $xinqing == 1
					$result = AddPlayerInfo( -1 , "item" , 61044 , 1 )
				endif
				if $xinqing == 2
					$result = AddPlayerInfo( -1 , "item" , 61045 , 1 )
				endif
				if $xinqing == 3
					$result = AddPlayerInfo( -1 , "item" , 61046 , 1 )
				endif
				if $xinqing == 4
					$result = AddPlayerInfo( -1 , "item" , 61047 , 1 )
				endif
			endif
		endif
		//6.5%?????????
		
		
		if $result == 0
			SubPlayerInfo( -1 , "item" , 63481 , 1 )
			//???????,??9????3???,3????
			$n = RandomNumber( 0 , 98 )
			if $n < 33
				PlayEffect(-1,"common\Yanhua\tx_xuanli1\tx_xuanli1.ini")
				PlayEffect(-1,"common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini")
				PlayEffect(-1,"common\Yanhua\tx_xuanli2\tx_xuanli2.ini")
				PlayEffect(-1,"common\Yanhua\tx_aixin\tx_aixin.ini")
			endif
			if $n < 66
				if $n >= 33
					PlayEffect(-1,"common\Yanhua\tx_xuanli3\tx_xuanli3.ini")
					PlayEffect(-1,"common\Yanhua\tx_youlingtu_semimi\tx_youlingtu_semimi.ini")
					PlayEffect(-1,"common\Yanhua\tx_meigui\tx_meigui.ini")
					PlayEffect(-1,"common\Yanhua\tx_xuanli4\tx_xuanli4.ini")
				endif
			endif
			if $n < 99
				if $n >= 66
					PlayEffect(-1,"common\Yanhua\tx_youlingtu_huoying\tx_youlingtu_huoying.ini")
					PlayEffect(-1,"common\Yanhua\tx_loveyou\tx_loveyou.ini")
					PlayEffect(-1,"common\Yanhua\tx_leiyu\tx_leiyu.ini")
					PlayEffect(-1,"common\Yanhua\tx_xuanli5\tx_xuanli5.ini")
				endif
			endif
		else
			return
		endif
		
		//?????????????????
		$time = GetSystemTime("yday")
		$day = GetPlayerVar(-1, 3757)
		$day1 = GetPlayerVar( $id1 , 3758)
		$day2 = GetPlayerVar( $id2 , 3758)
		//?????,????????????????0
		if $time != $day
			SetPlayerVar( -1 , 3231 , 0 )
		endif
		
		if $time != $day1
			SetPlayerVar( $id1 , 3229 , 0 )
		endif
		
		if $time != $day2
			SetPlayerVar( $id2 , 3229 , 0 )
		endif
		
		
		//?????????5?????
		$usecount = GetPlayerVar( -1 , 3231 )
		if $usecount < 5
			//??????,????????????10???
			$count1 = GetPlayerVar( $id1 , 3229 )
			$count2 = GetPlayerVar( $id2 , 3229 )
			if $count1 < 10
				if $level1 < 45
					$exp1 = $level1 * $level1
					$exp1 = $exp1 * 9
				else
					$exp1 = $level1 * $level1
					$n = $level1 * 4
					$n = $n - 76
					$exp1 = $exp1 * $n
					$exp1 = $exp1 * 12
					$exp1 = $exp1 / 100
				endif
				$result1 = AddPlayerInfo( $id1 , "exp" , $exp1 )
				//?????????????????,?????????
				if $result1 == 0
					$count1 = $count1 + 1
					SetPlayerVar( $id1 , 3229 , $count1 )
					SetPlayerVar( $id1 , 3758 , $time )
				endif
			else
				//?????10???
				BC( "screen", "player", $id1, "You have acquired the special EXP 10 times today. You cannot do that again now." )
			endif
			if $count2 < 10
				if $level2 < 45
					$exp2 = $level2 * $level2
					$exp2 = $exp2 * 9
				else
					$exp2 = $level2 * $level2
					$n = $level2 * 4
					$n = $n - 76
					$exp2 = $exp2 * $n
					$exp2 = $exp2 * 12
					$exp2 = $exp2 / 100
				endif
				$result2 = AddPlayerInfo( $id2 , "exp" , $exp2 )
				//?????????????????,?????????
				if $result2 == 0
					$count2 = $count2 + 1
					SetPlayerVar( $id2 , 3229 , $count2 )
					SetPlayerVar( $id2 , 3758 , $time )
				endif
			else
				//?????10???
				BC( "screen", "player", $id2, "You have acquired the special EXP 10 times today. You cannot do that again now." )
			endif
			
			//??????????+1,????????????
			$usecount = $usecount + 1
			SetPlayerVar( -1 , 3231 , $usecount )
			SetPlayerVar( -1 , 3757 , $time )
			
			//???????????
			$history = GetGlobalVar( 961 )
			$history = $history + 1
			SetGlobalVar( 961 , $history )
			
		else
			BC( "screen", "player", -1, "You have already used Dust of Dreams 5 times today. You cannot acquire any more EXP." )
		endif
		
	}