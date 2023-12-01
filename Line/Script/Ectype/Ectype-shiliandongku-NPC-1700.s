	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/05
	//		Author:???
	//		TaskName:Ectype-shiliandongku-NPC-1700.s
	//		TaskID:??????,???
	//
	//****************************************
	
	function OnRequest(){
				//???????? ????
		$today_time = GetSystemTime( "yday" )
		
		if $today_time != 306
		DisableNpcOption(1)
		return
			endif
	}
	
	
	function OnOption0(){
	
		$lv = GetPlayerInfo( -1 , "level" )
		$hour = GetSystemTime( "hour" )
		$minute =  GetSystemTime( "minute")
//--------???---------------------------------------
		$line = GetServerLineID()
		if $line == 1
			BC( "dialogbox", "player", -1, "The Trial for the Brave event is only available on realms 2, 4, 6, and 8." )
			return
		endif
		if $line == 3
				BC( "dialogbox", "player", -1, "The Trial for the Brave event is only available on realms 2, 4, 6, and 8." )
			return
		endif
		if $line == 5
				BC( "dialogbox", "player", -1, "The Trial for the Brave event is only available on realms 2, 4, 6, and 8." )
			return
		endif
		if $line == 7
				BC( "dialogbox", "player", -1, "The Trial for the Brave event is only available on realms 2, 4, 6, and 8." )
			return
		endif
		if $lv < 30
			BC( "dialogbox", "player", -1, "Your LV is lower than 30. Unable to attend event Trial for the Brave!" )
		endif
		
		FlyToMap( -1  , 116 , 50 , 31 )
		
		}
			//???????????id
	function OnOption1(){
	//??????
	$TaskVar = GetPlayerVar( -1, 257 )
	if $TaskVar >= 1
				BC( "dialogbox", "player", -1, "You've already obtained this reward!" )
				return
			endif

		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You bag is full. How could you receive my gifts?" )
			return
		endif
	
		AddPlayerInfo( -1, "item", 44501, 1 )
		SetPlayerVar( -1, 257, 1 )
		$TaskVar1 = GetPlayerVar( -1, 251)
		$TaskVar2 = GetPlayerVar( -1, 252)
		$TaskVar3 = GetPlayerVar( -1, 253)
		$TaskVar4 = GetPlayerVar( -1, 254)
		$TaskVar5 = GetPlayerVar( -1, 255)
		$TaskVar6 = GetPlayerVar( -1, 256)
		$TaskVar7 = GetPlayerVar( -1, 257)
    $TaskVar = $TaskVar1 + $TaskVar2   
    $TaskVar = $TaskVar + $TaskVar3 
    $TaskVar = $TaskVar + $TaskVar4
    $TaskVar = $TaskVar + $TaskVar5
    $TaskVar = $TaskVar + $TaskVar6
    $TaskVar = $TaskVar + $TaskVar7
	 if $TaskVar < 7
	
		BC( "screen", "player", -1, "Happy Halloween! Try to find if there are any gifts senders in Atlantis!" )
		
		return
		endif
		if $TaskVar == 7
	
		BC( "screen", "player", -1, "Congratulations! You've found all the gift senders in Atlantis! We all wish you a happy Halloween!!!" )
			PlayEffect(-1,"common\transmit\colorfulring\fire\colorfulring_fire.ini")
		return
		endif
	}