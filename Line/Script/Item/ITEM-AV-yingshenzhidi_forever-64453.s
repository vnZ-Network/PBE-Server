	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/28
	//		Author:??
	//		TaskName:ITEM-AV-yingshenzhidi_forever-64453.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$time = GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 , 3929 )
		#name = GetPlayerInfo( -1 , "name" )
		$Info = GetPlayerInfo ( -1 , "item" , 64348 )
		$level = GetPlayerInfo( -1 , "level" )
		
		if $level < 55
			BC( "dialogbox", "player", -1, "You can use the Flute of Horus when you are above {#ffc42828=LV55#}." )
			return
		endif
		
		if $time == $lasttime
			BC( "screen", "player", -1, "You have played Music Note of Horus today. Unable to play again." )
			return
		else
			if $Info < 1
				BC( "dialogbox", "player", -1, "You need {#ffc42828=Music Note of Horus#} to blow the Flute of Horus\nYou can purchase them from {#ffc42828=Vaphere#}" )
				return
			endif
			
			$del = SubPlayerInfo ( -1 , "item" , 64348 , 1 )
			
			if $del != 0
				return
			endif
			
			AddPlayerInfo ( -1 , "exp" , 1000000 )
			BC( "screen", "server", -1, "The hero ", #name ," played the Flute of Horus, and acquired 1,000,000 EXP." )
		
			SetPlayerVar( -1 , 3929 , $time )
			PlayEffect( -1 , "common\liumangxing\liumangxing.ini" )
			PlayEffect( -1 , "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
			
		endif
		

	}
	