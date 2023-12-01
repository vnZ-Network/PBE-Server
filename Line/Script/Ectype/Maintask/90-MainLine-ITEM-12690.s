//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/12
	//		Author:???
	//		TaskName:ITEM-fuzhidebaozangtu-12146.s
	//		TaskID:A-138 ????
	//****************************************
	
	function OnUseItem(){

		$mapid = 245
		$mapposx1 = 177
		$mapposy1 = 71
		$mapposx2 = 207
		$mapposy2 = 135	
		$mapposx3 = 240
		$mapposy3 = 72
		$ID = 12690
		$new_ID1 = 12736
		$new_ID2 = 12737
		$new_ID3 = 12738
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )	
	
	//-----------????-?(u)?(d)?(l)?(r)--------------------------
		$n = 5
		$r_mapposx1 = $mapposx1 + $n
		$d_mapposy1 = $mapposy1 + $n
		$l_mapposx1 = $mapposx1 - $n
		$u_mapposy1 = $mapposy1 - $n
		
		$r_mapposx2 = $mapposx2 + $n
		$d_mapposy2 = $mapposy2 + $n
		$l_mapposx2 = $mapposx2 - $n
		$u_mapposy2 = $mapposy2 - $n

		$r_mapposx3 = $mapposx3 + $n
		$d_mapposy3 = $mapposy3 + $n
		$l_mapposx3 = $mapposx3 - $n
		$u_mapposy3 = $mapposy3 - $n
	
		
	//-----------????ID---------------
		
		if $player_mapid != $mapid
			BC( "screen", "player", -1, "The position of Serra gear is not here." )
			return
		endif
		PlayAction( -1 , "wajue", 0 , 2 )
		$n = RandomNumber ( 0 , 100 )
		if $n >= 70
			BC( "screen", "player", -1, "You did not got what you wanted, please try again." )
			PlayEffect( -1, "Effect\common\zhadan\zhadan_01\tx_common_zhadan_zhadan_01.ini" )
			return
		endif
	//-----------??,x??192,?????A,x??225,??B,????C?--------------------
		if $player_x < 192
			if $player_x < $l_mapposx1
				BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
				return
			endif
			if $player_x > $r_mapposx1
				BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
				return
			endif
			if $player_y < $u_mapposy1
				BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
				return
			endif
			if $player_y > $d_mapposy1
				BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
				return
			endif
			$b = GetPlayerInfo ( -1 ,"item", 12737)
			$c = GetPlayerInfo ( -1 ,"item", 12738)
			$a = GetPlayerInfo ( -1 ,"item", 12736)
			if $a > 0
				BC( "screen", "player", -1, "You already got the Helmet of Serra Tribe." )
				return
			endif
			if $b > 0
				if $c > 0
					SubPlayerInfo ( -1 ,"item", $ID , 1 )
					AddPlayerInfo ( -1 ,"item", $new_ID1 , 1 )
					PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
					BC( "screen", "player", -1, "You got the Helmet of Serra Tribe successfully." )
				else
					AddPlayerInfo ( -1 ,"item", $new_ID1 , 1 )
					PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
					BC( "screen", "player", -1, "You got the Helmet of Serra Tribe successfully." )
				endif
			else
				AddPlayerInfo ( -1 ,"item", $new_ID1 , 1 )
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "screen", "player", -1, "You got the Helmet of Serra Tribe successfully." )
				endif
			endif			
			
		endif
		 
		if $player_x < 225	
			if $player_x >= 192
				if $player_x < $l_mapposx2
					BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
					return
				endif
				if $player_x > $r_mapposx2
					BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
					return
				endif
				if $player_y < $u_mapposy2
					BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
					return
				endif
				if $player_y > $d_mapposy2
					BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
					return
				endif
				
				$a = GetPlayerInfo ( -1 ,"item", 12736)
				$c = GetPlayerInfo ( -1 ,"item", 12738)
				$b = GetPlayerInfo ( -1 ,"item", 12737)
				if $b > 0
					BC( "screen", "player", -1, "You already got the Greave of Serra Tribe." )
					return
				endif
				if $a > 0
					if $c > 0
						SubPlayerInfo ( -1 ,"item", $ID , 1 )
						AddPlayerInfo ( -1 ,"item", $new_ID2 , 1 )
						PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
						BC( "screen", "player", -1, "You got the Greave of Serra Tribe successfully." )
					else
						AddPlayerInfo ( -1 ,"item", $new_ID2 , 1 )
						PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
						BC( "screen", "player", -1, "You got the Greave of Serra Tribe successfully." )
					endif
				else
					AddPlayerInfo ( -1 ,"item", $new_ID2 , 1 )
					PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
					BC( "screen", "player", -1, "You got the Greave of Serra Tribe successfully." )
					endif
				endif
			endif
		endif
		
		if $player_x >= 225
			if $player_x < $l_mapposx3
				BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
				return
			endif
			if $player_x > $r_mapposx3
				BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
				return
			endif
			if $player_y < $u_mapposy3
				BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
				return
			endif
			if $player_y > $d_mapposy3
				BC( "screen", "player", -1, "The position of Serra gear is not here, please check it out." )
				return
			endif
			$b = GetPlayerInfo ( -1 ,"item", 12737)
			$a = GetPlayerInfo ( -1 ,"item", 12736)
			$c = GetPlayerInfo ( -1 ,"item", 12738)
			if $c > 0
				BC( "screen", "player", -1, "You already got the Belt of Serra Tribe." )
				return
			endif
			if $b > 0
				if $a > 0
					SubPlayerInfo ( -1 ,"item", $ID , 1 )
					AddPlayerInfo ( -1 ,"item", $new_ID3 , 1 )
					PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
					BC( "screen", "player", -1, "You got the Belt of Serra Tribe successfully." )
				else
					AddPlayerInfo ( -1 ,"item", $new_ID3 , 1 )
					PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
					BC( "screen", "player", -1, "You got the Belt of Serra Tribe successfully." )
				endif
			else
				AddPlayerInfo ( -1 ,"item", $new_ID3 , 1 )
				PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
				BC( "screen", "player", -1, "You got the Belt of Serra Tribe successfully." )
				endif
			endif
		endif

	}