	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/22
	//		Author:???
	//		TaskName:Ectype-elinggubao-Item-63718.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 10
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100

		$time = GetPlayerVar( -1 , 3973 )
		
		$nowtime = GetSystemTime( "yday")
		$nowtime = $nowtime + 1
		
		$round = GetPlayerVar( -1 , 3972)
		


		if $time == $nowtime
		
			if $round < 100
				$info = SubPlayerInfo ( -1 , "item" , 63718 , 1 )
				if  $info != 0
					return
				endif
		
				if $lv > 19
					AddPlayerInfo( -1 , "exp" , $exp )
				else
					AddPlayerInfo( -1 , "exp" , 100 )
				endif
				
				$round = $round + 1
				
				SetPlayerVar(-1 , 3972	, $round)
				BC( "screen", "player", -1, "You have used ",$round,"/100 Experience Orbs (Medium) today." )
			else
				BC( "screen", "player", -1, "You have used 100 Experience Orbs (Medium) today." )
				return
			endif

		else
		
			$info = SubPlayerInfo ( -1 , "item" , 63718 , 1 )
			if  $info != 0
				return
			endif
	
			if $lv > 19
				AddPlayerInfo( -1 , "exp" , $exp )
			else
				AddPlayerInfo( -1 , "exp" , 100 )
			endif
			
			BC( "screen", "player", -1, "You can only use 100 Experience Orbs (Medium) a day." )
			SetPlayerVar( -1 ,3973, $nowtime )
			SetPlayerVar( -1 ,3972, 1 )
		endif
			
		
	}
	