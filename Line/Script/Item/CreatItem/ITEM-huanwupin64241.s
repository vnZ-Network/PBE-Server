	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin4601.s
	//		TaskID:????????????
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
		$count = GetPlayerInfo( -1, "item", 64241 )
		if 	$count < 5
			BC( "screen", "player", -1, "Insufficient Gem Fragment!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 64241, 5)
			if $revalu == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
					$item_number = 5001
					//BC( "messagebox", "player", -1, "GUID:06057000002" )
				endif
				if $n == 2
					$item_number = 5021
					//BC( "messagebox", "player", -1, "GUID:06057000003" )
				endif
				if $n == 3
					$item_number = 5041
					//BC( "messagebox", "player", -1, "GUID:06057000004" )
				endif
				if $n == 4
					$item_number = 5061
					//BC( "messagebox", "player", -1, "GUID:06057000005" )
				endif
				if $n == 5
					$item_number = 5081
					//BC( "messagebox", "player", -1, "GUID:06057000006" )
				endif
				if $n == 6
					$item_number = 5101
					//BC( "messagebox", "player", -1, "GUID:06057000007" )
				endif
				if $n == 7
					$item_number = 5121
					//BC( "messagebox", "player", -1, "GUID:06057000008" )
				endif
				if $n == 8
					$item_number = 5141
					//BC( "messagebox", "player", -1, "GUID:06057000009" )
				endif
				if $n == 9
					$item_number = 5161
					//BC( "messagebox", "player", -1, "GUID:06057000010" )
				endif
				if $n == 10
					$item_number = 5181
					//BC( "messagebox", "player", -1, "GUID:06057000011" )
				endif
				if $n == 11
					$item_number = 5201
					//BC( "messagebox", "player", -1, "GUID:06057000012" )
				endif
				if $n == 12
					$item_number = 5221
					//BC( "messagebox", "player", -1, "GUID:06057000013" )
				endif
				if $n == 13
					$item_number = 5241
					//BC( "messagebox", "player", -1, "GUID:06057000014" )
				endif
				if $n == 14
					$item_number = 5261
					//BC( "messagebox", "player", -1, "GUID:06057000015" )
				endif

				if $n == 15
					$item_number = 5381
					//BC( "messagebox", "player", -1, "GUID:06057000016" )
				endif
				if $n == 16
					$item_number = 5401
					//BC( "messagebox", "player", -1, "GUID:06057000017" )
				endif
				if $n == 17
					$item_number = 5421
					//BC( "messagebox", "player", -1, "GUID:06057000018" )
				endif
				if $n == 18
					$item_number = 5441
					//BC( "messagebox", "player", -1, "GUID:06057000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
	}