	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/30
	//		Author:???
	//		TaskName:NPC-133.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnRequest(){
			
		$time = GetSystemTime( "yday" )
		$last_time = GetPlayerVar(-1,3650)
		if $time == $last_time
			DisableNpcOption(0)
		endif
		
		$Now_Mday =  GetSystemTime( "mday" )
		$Now_Month =  GetSystemTime( "month" )
		
		$monthadd = $Now_Month * 100
		$Time = $monthadd + $Now_Mday
		
//		if $Time < 1120
//			DisableNpcOption(1)
//			DisableNpcOption(2)
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//			DisableNpcOption(5)
//			DisableNpcOption(6)
//			DisableNpcOption(7)
//		endif
		//??????

	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
	//???.0-6
	$Now_Week =  GetSystemTime( "week" )
	//??????.0-365
	$Now_Yday =  GetSystemTime( "yday" )
	if $Now_Year != 2013 
	  DisableNpcOption(8)
     
  endif
  	if $Now_Month != 2 
	   DisableNpcOption(8)
     
  endif
  if $Now_Mday < 10
	   DisableNpcOption(8)
     
  endif
   if $Now_Mday > 26
	   DisableNpcOption(8)
     
  endif
  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 5
	   DisableNpcOption(8)
     
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44640)	
			if $Info < 1
				DisableNpcOption(8)
				
			endif
		
	}
	
	function OnOption0(){
	
		$time = GetSystemTime( "yday" )
		$level = GetPlayerInfo( -1 ,"level" )
		
		$last_time = GetPlayerVar(-1,3650)
		if $time == $last_time
			return
		endif
		
		$num = GetPlayerInfo(-1,"nullitem",0)
		if $num < 2
			BC( "dialogbox", "player", -1, "You need at least 2 empty bag slots." )
			return
		endif
		if $level < 15
			AddPlayerInfo ( -1 ,"item", 6370 , 100 )
			AddPlayerInfo ( -1 ,"item", 6378 , 100 )
			SetPlayerVar(-1,3650,$time)
			PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
			BC( "dialogbox", "player", -1, "You have received the free allotment for today!" )
		endif
		
		if $level < 30
			if $level > 14
				AddPlayerInfo ( -1 ,"item", 6371 , 100 )
				AddPlayerInfo ( -1 ,"item", 6379 , 100 )
				SetPlayerVar(-1,3650,$time)
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "dialogbox", "player", -1, "You have received the free allotment for today!" )
			endif
		endif
		
		if $level < 45
			if $level > 29
				AddPlayerInfo ( -1 ,"item", 6372 , 100 )
				AddPlayerInfo ( -1 ,"item", 6380 , 100 )
				SetPlayerVar(-1,3650,$time)
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "dialogbox", "player", -1, "You have received the free allotment for today!" )
			endif
		endif
		if $level < 60
			if $level > 44
				AddPlayerInfo ( -1 ,"item", 6373 , 100 )
				AddPlayerInfo ( -1 ,"item", 6381 , 100 )
				SetPlayerVar(-1,3650,$time)
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "dialogbox", "player", -1, "You have received the free allotment for today!" )
			endif
		endif
		if $level < 75
			if $level > 59
				AddPlayerInfo ( -1 ,"item", 6374 , 100 )
				AddPlayerInfo ( -1 ,"item", 6382 , 100 )
				SetPlayerVar(-1,3650,$time)
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "dialogbox", "player", -1, "You have received the free allotment for today!" )
			endif
		endif
		if $level < 90
			if $level > 74
				AddPlayerInfo ( -1 ,"item", 6375 , 100 )
				AddPlayerInfo ( -1 ,"item", 6383 , 100 )
				SetPlayerVar(-1,3650,$time)
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "dialogbox", "player", -1, "You have received the free allotment for today!" )
			endif
		endif
		if $level < 120
			if $level > 89
			AddPlayerInfo ( -1 ,"item", 6376 , 100 )
			AddPlayerInfo ( -1 ,"item", 6384 , 100 )
			SetPlayerVar(-1,3650,$time)
			PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
			BC( "dialogbox", "player", -1, "You have received the free allotment for today!" )
			endif
		endif
		if $level > 119
			AddPlayerInfo ( -1 ,"item", 6377 , 100 )
			AddPlayerInfo ( -1 ,"item", 6385 , 100 )
			SetPlayerVar(-1,3650,$time)
			PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
			BC( "dialogbox", "player", -1, "You have received the free allotment for today!" )
		endif
	}
	
	function OnOption1(){
		
		$item = GetPlayerInfo(-1,"item",59972)
		if $item < 1
			BC("dialogbox","player",-1,"You are not carrying any exchangeable items.")
			return
		endif
		
	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You don't have enough space in your bag. Please make room before you exchange more items." )
	     return
	  endif
		
		$revaluet = SubPlayerInfo(-1,"item",59972,1)
		if $revaluet != 0
			BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
			return
		else
			AddPlayerInfo(-1,"item",6104,1)
			BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")
		endif
			
		
	}		
	
	function OnOption2(){
		
		$item = GetPlayerInfo(-1,"item",59973)
		if $item < 1
			BC("dialogbox","player",-1,"You are not carrying any exchangeable items.")
			return
		endif
		
	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You don't have enough space in your bag. Please make room before you exchange more items." )
	     return
	  endif
		
		$revaluet = SubPlayerInfo(-1,"item",59973,1)
		if $revaluet != 0
			BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
			return
		else
			AddPlayerInfo(-1,"item",6114,1)
			BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")
		endif		
		
	}
	
	function OnOption3(){

		$item = GetPlayerInfo(-1,"item",59974)
		if $item < 1
			BC("dialogbox","player",-1,"You are not carrying any exchangeable items.")
			return
		endif
		
	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You don't have enough space in your bag. Please make room before you exchange more items." )
	     return
	  endif
		
		$revaluet = SubPlayerInfo(-1,"item",59974,1)
		if $revaluet != 0
			BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
			return
		else
			AddPlayerInfo(-1,"item",6164,1)
			BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")
		endif				
		
		
	}
	
	function OnOption4(){

		$item = GetPlayerInfo(-1,"item",59975)
		if $item < 1
			BC("dialogbox","player",-1,"You are not carrying any exchangeable items.")
			return
		endif
		
	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You don't have enough space in your bag. Please make room before you exchange more items." )
	     return
	  endif
		
		$revaluet = SubPlayerInfo(-1,"item",59975,1)
		if $revaluet != 0
			BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
			return
		else
			AddPlayerInfo(-1,"item",6184,1)
			BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")
		endif				
		
		
	}	
	
	function OnOption5(){

	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You don't have enough space in your bag. Please make room before you exchange more items." )
	     return
	  endif

		$item = GetPlayerInfo(-1,"item",59980)
		if $item >= 2
			$revaluet = SubPlayerInfo(-1,"item",59980,2)
			if $revaluet != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			else
				AddPlayerInfo(-1,"item",6034,1)
				BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")
			endif
		else
			
			$item1 = GetPlayerInfo(-1,"item",59972)
			if $item1 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item2 = GetPlayerInfo(-1,"item",59973)
			if $item2 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item3 = GetPlayerInfo(-1,"item",59974)
			if $item3 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item4 = GetPlayerInfo(-1,"item",59975)
			if $item4 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
		
		
			$revaluet1 = SubPlayerInfo(-1,"item",59972,1)
			if $revaluet1 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
	
			$revaluet2 = SubPlayerInfo(-1,"item",59973,1)
			if $revaluet2 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
			
			$revaluet3 = SubPlayerInfo(-1,"item",59974,1)
			if $revaluet3 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
			
			$revaluet4 = SubPlayerInfo(-1,"item",59975,1)
			if $revaluet4 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif						
			
			AddPlayerInfo(-1,"item",6034,1)
			BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")		
		
		endif	
		
		

}		

	function OnOption6(){

	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You don't have enough space in your bag. Please make room before you exchange more items." )
	     return
	  endif

		$item = GetPlayerInfo(-1,"item",59980)
		if $item >= 2
			$revaluet = SubPlayerInfo(-1,"item",59980,2)
			if $revaluet != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			else
				AddPlayerInfo(-1,"item",6036,1)
				BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")
			endif
		else
			
			$item1 = GetPlayerInfo(-1,"item",59972)
			if $item1 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item2 = GetPlayerInfo(-1,"item",59973)
			if $item2 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item3 = GetPlayerInfo(-1,"item",59974)
			if $item3 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item4 = GetPlayerInfo(-1,"item",59975)
			if $item4 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
		
		
			$revaluet1 = SubPlayerInfo(-1,"item",59972,1)
			if $revaluet1 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
	
			$revaluet2 = SubPlayerInfo(-1,"item",59973,1)
			if $revaluet2 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
			
			$revaluet3 = SubPlayerInfo(-1,"item",59974,1)
			if $revaluet3 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
			
			$revaluet4 = SubPlayerInfo(-1,"item",59975,1)
			if $revaluet4 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif						
			
			AddPlayerInfo(-1,"item",6036,1)
			BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")		
		
		endif	
		
		

}	

	function OnOption7(){

	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You don't have enough space in your bag. Please make room before you exchange more items." )
	     return
	  endif

		$item = GetPlayerInfo(-1,"item",59980)
		if $item >= 2
			$revaluet = SubPlayerInfo(-1,"item",59980,2)
			if $revaluet != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			else
				AddPlayerInfo(-1,"item",6037,1)
				BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")
			endif
		else
			
			$item1 = GetPlayerInfo(-1,"item",59972)
			if $item1 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item2 = GetPlayerInfo(-1,"item",59973)
			if $item2 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item3 = GetPlayerInfo(-1,"item",59974)
			if $item3 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
			
			$item4 = GetPlayerInfo(-1,"item",59975)
			if $item4 < 1
				BC("dialogbox","player",-1,"You need to collect Celestial Lord or possess a special-grade Potion in order to exchange.")
				return
			endif
		
		
			$revaluet1 = SubPlayerInfo(-1,"item",59972,1)
			if $revaluet1 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
	
			$revaluet2 = SubPlayerInfo(-1,"item",59973,1)
			if $revaluet2 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
			
			$revaluet3 = SubPlayerInfo(-1,"item",59974,1)
			if $revaluet3 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif
			
			$revaluet4 = SubPlayerInfo(-1,"item",59975,1)
			if $revaluet4 != 0
				BC("dialogbox","player",-1,"An error occurred with the exchange; please contact Customer Service.")
				return
			endif						
			
			AddPlayerInfo(-1,"item",6037,1)
			BC("screen","player",-1,"You successfully exchanged for a Rare Potion.")		
		
		endif	
		
		

}	
function OnOption8(){
	  	//????
    $playervar = GetPlayerVar(-1,3451)  
    if $playervar > 5
     return
  endif
   	//??????
		$Info = GetPlayerInfo( -1, "item", 44640)	
			if $Info < 1
				return
			endif

		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		 //???????
     $del_count = SubPlayerInfo( -1, "item", 44640, 1 )
     //??????????,????????
  if $del_count != 0
     return
  endif
		AddPlayerInfo( -1, "item", 44641, 1 )
		AddPlayerInfo( -1, "item", 59557, 1 )
		$playervar = $playervar + 1
		SetPlayerVar(-1, 3451, $playervar )
		BC( "dialogbox", "player", -1, "This is your lucky red envelope!\nGo to see {hHyke[191]h} now! He'll be glad to see you." )
		
	}
	