	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin64249.s
	//		TaskID:??????????????
	//
	//****************************************
	
	function OnUseItem(){
	
		//????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 64249 )
		if 	$count < 1
			BC( "screen", "player", -1, "No LV6 gem bag!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 64249, 1)
			if $revalu == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
				$item_number = 5006
					//BC( "messagebox", "player", -1, "GUID:06064000002" )
				endif
				if $n == 2
				$item_number = 5026
					//BC( "messagebox", "player", -1, "GUID:06064000003" )
				endif
				if $n == 3
				$item_number = 5046
					//BC( "messagebox", "player", -1, "GUID:06064000004" )
				endif
				if $n == 4
				$item_number = 5066
					//BC( "messagebox", "player", -1, "GUID:06064000005" )
				endif
				if $n == 5
				$item_number = 5086
					//BC( "messagebox", "player", -1, "GUID:06064000006" )
				endif
				if $n == 6
				$item_number = 5106
					//BC( "messagebox", "player", -1, "GUID:06064000007" )
				endif
				if $n == 7
				$item_number = 5126
					//BC( "messagebox", "player", -1, "GUID:06064000008" )
				endif
				if $n == 8
				$item_number = 5146
					//BC( "messagebox", "player", -1, "GUID:06064000009" )
				endif
				if $n == 9
				$item_number = 5166
					//BC( "messagebox", "player", -1, "GUID:06064000010" )
				endif
				if $n == 10
				$item_number = 5186
					//BC( "messagebox", "player", -1, "GUID:06064000011" )
				endif
				if $n == 11
				$item_number = 5206
					//BC( "messagebox", "player", -1, "GUID:06064000012" )
				endif
				if $n == 12
				$item_number = 5226
					//BC( "messagebox", "player", -1, "GUID:06064000013" )
				endif
				if $n == 13
				$item_number = 5246
					//BC( "messagebox", "player", -1, "GUID:06064000014" )
				endif
				if $n == 14
				$item_number = 5266
					//BC( "messagebox", "player", -1, "GUID:06064000015" )
				endif
				if $n == 15
				$item_number = 5386
					//BC( "messagebox", "player", -1, "GUID:06064000016" )
				endif
				if $n == 16
				$item_number = 5406
					//BC( "messagebox", "player", -1, "GUID:06064000017" )
				endif
				if $n == 17
				$item_number = 5426
					//BC( "messagebox", "player", -1, "GUID:06064000018" )
				endif
				if $n == 18
				$item_number = 5446
					//BC( "messagebox", "player", -1, "GUID:06064000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
	}