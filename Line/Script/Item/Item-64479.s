	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/22
	//		Author:???
	//		TaskName:Item-64479.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$round = GetPlayerVar( -1 , 3319 )
		$level = GetPlayerInfo( -1, "level" )
		$fieldlevel = GetFieldLevel(-1)
		
			if $round < 4
				$info = SubPlayerInfo( -1 , "item" , 64479 , 1 )
				if  $info != 0
						return
				endif
						
				AddTarotCostMax(-1,5)
				$round = $round + 1		
				SetPlayerVar( -1 , 3319 , $round )
				BC( "screen", "player", -1, "Your Max Fate Energy has been increased by 5!" )
			else
				BC( "screen", "player", -1, "You have opened the Ties of Fate 4 times today. Cannot use anymore!" )
				
				$info = SubPlayerInfo( -1 , "item" , 64479 , 1 )
				if  $info != 0
						return
				endif
									
				if  $fieldlevel > 0
				
						$godexp = $fieldlevel * $fieldlevel
						$x = $fieldlevel * 6
						$x = $x / 10
						$godexp = $godexp + $x
						$godexp = $godexp + 1000
						$godexp1 = $godexp / 5
						$godexp2 = $godexp1 * 2
						AddFieldExp( -1 , $godexp2 )
							
				else
						$a = $level * $level
						$b = $level * 30
						$c = $a + $b
						$add_exp = $c + 25
						$add_exp = $add_exp * 2
						AddPlayerInfo(-1,"exp",$add_exp)
				endif				
			
			endif
		
		
	}