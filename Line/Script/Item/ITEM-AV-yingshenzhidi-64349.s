	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/29
	//		Author:???
	//		TaskName:ITEM-AV-yingshenzhidi-64349.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$time = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3694 )
		$a = GetPlayerVar( -1 , 3695 )
		$b = $a + 1
		#name = GetPlayerInfo( -1 , "name" )
		$Info = GetPlayerInfo ( -1 , "item" , 64348 )
		if $time == $lasttime
			BC( "screen", "player", -1, "You have already played Music Note of Horus. It can be played once a day." )
			return
		else
			if $b < 30
				if $Info < 1
					BC( "dialogbox", "player", -1, "You need Music Note of Horus to play Flute of Horus. You can purchase it from the adventurer supplier." )
					return
				endif
				$del = SubPlayerInfo ( -1 , "item" , 64348 , 1 )
				if $del != 0
					return
				endif
				AddPlayerInfo ( -1 , "exp" , 1000000 )
				BC( "screen", "server", -1, "The hero ", #name ," has played the Flute of Horus, and gained 1 million EXP!" )
				BC( "dialogbox", "player", -1, "You have played Flute of Horus for ",$b," times.\nYou gained 1 million EXP!" )
				SetPlayerVar( -1 , 3694 , $time )
				SetPlayerVar( -1 , 3695 , $b )
				PlayEffect( -1 , "common\liumangxing\liumangxing.ini" )
				PlayEffect( -1 , "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
			endif
			if $b == 30
				if $Info < 1
					BC( "dialogbox", "player", -1, "You need Music Note of Horus to play Flute of Horus. You can purchase it from the adventurer supplier." )
					return
				endif
				$del = SubPlayerInfo ( -1 , "item" , 64348 , 1 )
				if $del != 0
					return
				endif
				AddPlayerInfo ( -1 , "exp" , 1000000 )
				BC( "screen", "server", -1 , "The hero ", #name ," has played the Flute of Horus, and gained 1 million EXP!" )
				BC( "dialogbox", "player", -1 , "You have acquired the title 'Flute of Horus Player'. Now the flute is floating in the air, and gradually disappears." )
				SetPlayerVar( -1 , 3694 , $time )
				SetPlayerVar( -1 , 3695 , $b )
				PlayEffect( -1 , "common\liumangxing\liumangxing.ini" )
				PlayEffect( -1 , "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				//????????
				SubPlayerInfo ( -1 , "item" , 64349 , 1 )
				AddTitle( -1 , 47 )
			endif
			if $b > 30
				BC( "dialogbox", "player", -1, "You have used Flute of Horus 30 times. The flute's power has already been emptied." )
			endif
		endif
		

	}
	