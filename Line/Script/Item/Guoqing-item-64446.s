	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/15
	//		Author:???
	//		TaskName:Guoqing-item-64446.s
	//		TaskID:??
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 64446 , 1 )
		if  $info != 0
			return
		endif
		
		$lv = GetPlayerInfo( -1 , "level" )
		$a = $lv * $lv
		$b = $a * 3
		$c = $b / 4
		$d = $c + 500
		
		$money = $d
		if $lv >= 45
			$n = RandomNumber ( 0 , 9999 )
			if $n < 2860
				AddPlayerInfo( -1 ,"money", $money )
			endif
			if $n < 2880
				if $n >= 2860
					AddPlayerInfo( -1 ,"item", 63552 , 1 )	
				endif
			endif
			if $n < 2900
				if $n >= 2880
					AddPlayerInfo( -1 ,"item", 63553 , 1 )	
				endif
			endif
			if $n < 5900
				if $n >= 2900
					AddPlayerInfo( -1 ,"item", 64178 , 1 )	
				endif
			endif
			if $n < 6500
				if $n >= 5900
					AddPlayerInfo( -1 ,"item", 60029 , 1 )	
				endif
			endif
			if $n < 7500
				if $n >= 6500
					AddPlayerInfo( -1 ,"item", 19 , 1 )	
				endif
			endif
			if $n < 8000
				if $n >= 7500
					AddPlayerInfo( -1 ,"item", 61000 , 1 )	
				endif
			endif
			if $n < 8500
				if $n >= 8000
					AddPlayerInfo( -1 ,"item", 61038 , 1 )	
				endif
			endif
				
			if $n < 8800
				if $n >= 8500
					AddPlayerInfo( -1 ,"item", 64040 , 1 )	
				endif
			endif
			if $n < 9100
				if $n >= 8800
					AddPlayerInfo( -1 ,"item", 64041 , 1 )	
				endif
			endif
			if $n < 9400
				if $n >= 9100
					AddPlayerInfo( -1 ,"item", 64042 , 1 )	
				endif
			endif
			if $n < 9700
				if $n >= 9400
					AddPlayerInfo( -1 ,"item", 64043 , 1 )	
				endif
			endif
			if $n >= 9700
				AddPlayerInfo( -1 ,"item", 64044 , 1 )		
			endif
		else
			AddPlayerInfo( -1 ,"money", $money )
		endif
		
		$m = RandomNumber ( 0 , 2 )
		if $m == 0
			PlayEffect(-1,"common\Yanhua\tx_xuanli1\tx_xuanli1.ini")
		endif
		if $m == 1
			PlayEffect(-1,"common\Yanhua\tx_xuanli2\tx_xuanli2.ini")
		endif
		if $m == 2
			PlayEffect(-1,"common\Yanhua\tx_xuanli4\tx_xuanli4.ini")
		endif
	}