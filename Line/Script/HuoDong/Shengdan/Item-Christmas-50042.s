	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/18
	//		Author:???
	//		TaskName:Item-Christmas-50042.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$sex = GetPlayerInfo( -1 , "sex" )
		#name =  GetPlayerInfo ( -1 , "name"  )
//----------lv*lv*10-------------
		$a = $lv * $lv
		$b = 10 * $a
		$exp1 = $b 
	
//----------(4*lv-76)*lv*lv/10-----
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = $d / 10
		$exp2 = $e
//---------------------------------
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 2
			BC( "screen", "player", -1 , "You need at least 2 empty slots in your bag. Unable to open reward pack." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 50042 , 1 )
		if  $info != 0
			return
		endif
		
			AddPlayerInfo( -1 ,"item", 59216 , 60 )
			$n = RandomNumber ( 0 , 9999 )
			if $n < 800
				AddPlayerInfo( -1 ,"item", 64044 , 1 )	
			endif
			if $n < 1600
				if $n >= 800
					AddPlayerInfo( -1 ,"item", 64040 , 1 )	
				endif
			endif
			if $n < 2400
				if $n >= 1600
					AddPlayerInfo( -1 ,"item", 64041 , 1 )	
				endif
			endif
			if $n < 3200
				if $n >= 2400
					AddPlayerInfo( -1 ,"item", 64042 , 1 )	
				endif
			endif
			if $n < 4000
				if $n >= 3200
					AddPlayerInfo( -1 ,"item", 64043 , 1 )	
				endif
			endif
			
			if $n < 4100
				if $n >= 4000
					if $sex == 0
						AddPlayerInfo( -1 ,"item", 36495 , 1 )	
					else
						AddPlayerInfo( -1 ,"item", 36494 , 1 )	
					endif
				endif
			endif
			if $n < 4133
				if $n >= 4100
					AddPlayerInfo( -1 ,"item", 36496 , 1 )	
				endif
			endif
			if $n < 4166
				if $n >= 4133
					AddPlayerInfo( -1 ,"item", 36497 , 1 )	
				endif
			endif
				
			if $n < 4200
				if $n >= 4166
					AddPlayerInfo( -1 ,"item", 36498 , 1 )	
				endif
			endif
			if $n < 4300
				if $n >= 4200
					if $sex == 0
						AddPlayerInfo( -1 ,"item", 63565 , 1 )	
					else
						AddPlayerInfo( -1 ,"item", 63563 , 1 )	
					endif	
				endif
			endif
			if $n < 4400
				if $n >= 4300
					if $sex == 0
						AddPlayerInfo( -1 ,"item", 63566 , 1 )	
					else
						AddPlayerInfo( -1 ,"item", 63564 , 1 )	
					endif	
				endif
			endif
			
			
			if $n < 4405
				if $n >= 4400
					AddPlayerInfo( -1 ,"item", 62057 , 1 )
					BC( "messagebox", "player", -1, " received the Polar Dog Sled Mount!" )
					BC( "screen", "servergroup", -1, "Congratulations!",#name," received the Polar Dog Sled Mount!" )
					BC( "chat", "servergroup", -1, "Congratulations!",#name," received the Polar Dog Sled Mount!" )
				endif
			endif
			
			if $n < 4410
				if $n >= 4405
					AddPlayerInfo( -1 ,"item", 62546 , 1 )
					BC( "messagebox", "player", -1, "Congratulations! You received a pet egg, [Snowbaby]." )
					BC( "screen", "servergroup", -1, "Congratulations!",#name,"You received a pet egg, [Snowbaby]." )
					BC( "chat", "servergroup", -1, "Congratulations!",#name,"You received a pet egg, [Snowbaby]." )	
				endif
			endif
			
			if $n < 4420
				if $n >= 4410
					if $lv < 45
						AddPlayerInfo( -1 , "exp" , $exp1 )
					else
						AddPlayerInfo( -1 , "exp" , $exp2 )
					endif
				endif
			endif
			
			if $n >= 4420
				if $lv < 45
					AddPlayerInfo( -1 , "exp" , $exp1 )
				else
					AddPlayerInfo( -1 , "exp" , $exp2 )
				endif
			endif
	}