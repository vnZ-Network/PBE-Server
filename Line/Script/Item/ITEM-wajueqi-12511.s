 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/23
	//		Author:???
	//		TaskName:ITEM-wajueqi-12511.s
	//		TaskID:???
	//****************************************
	
	function OnUseItem(){
	
	
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$x = GetPlayerInfo ( -1 , "mapposx" )
		$y = GetPlayerInfo ( -1 , "mapposy" )
		$info = SubPlayerInfo ( -1 ,"item",12511, 1 )
		if $info != 0
			return
		endif
		BC( "screen", "player", -1, "Your shovel was broken.")
		$n =  RandomNumber(0,99)
		
//-----20????????-----??----	
		$task1 = IsTaskAccept(-1,1504)
		if $mapid == 20
			if $task1 == 0
			
				if $x > 200
					if $x < 208
						if $y > 241
							if $y < 249
								if $n < 20
									AddPlayerInfo ( -1 ,"item", 12542 , 1 )
									PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_blue.ini" )
								else
									BC( "screen", "player", -1, "Nothing is found!")	
								endif
							endif
						endif
					endif
				endif
				if $x > 179
					if $x < 187
						if $y > 79
							if $y < 87
								if $n < 20
									AddPlayerInfo ( -1 ,"item", 12543 , 1 )
									PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_blue.ini" )
								else
									BC( "screen", "player", -1, "Nothing is found!")		
								endif
							endif
						endif
					endif
				endif
			endif
		endif
//-----20????????-----??----		
//-----20????????-----??----
		$task2 = IsTaskAccept(-1,1508)
		if $mapid == 8
			if $task2 == 0
			
				if $x > 54
					if $x < 63
						if $y > 44
							if $y < 53
								if $n < 20
									AddPlayerInfo ( -1 ,"item", 12544 , 1 )
									PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_blue.ini" )
								else
									BC( "screen", "player", -1, "Nothing is found!")		
								endif
							endif
						endif
					endif
				endif
				if $x > 60
					if $x < 68
						if $y > 248
							if $y < 256
								if $n < 20
									AddPlayerInfo ( -1 ,"item", 12545 , 1 )
									PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_blue.ini" )
								else
									BC( "screen", "player", -1, "Nothing is found!")		
								endif
							endif
						endif
					endif
				endif
			endif
		endif
//-----20????????-----??----
//-----21?????-----??---------
		$task3 = IsTaskAccept(-1,1584)
		if $mapid == 21
			if $task3 == 0
				if $x > 44
					if $x < 53
						if $y > 235
							if $y < 243
								if $n < 20
									AddPlayerInfo ( -1 ,"item", 12602 , 1 )
									PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_blue.ini" )
								else
									BC( "screen", "player", -1, "Nothing is found!")	
								endif
							endif
						endif
					endif
				endif
			endif
		endif
//-----21?????-----??---------
	}