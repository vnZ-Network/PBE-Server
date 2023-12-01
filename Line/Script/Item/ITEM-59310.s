	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/24
	//		Author:???
	//		TaskName:ITEM-59310.s
	//		TaskID:??????????????
	//
	//****************************************
	
	function OnUseItem(){
	
		//????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 59310 )
		if 	$count < 1
			BC( "screen", "player", -1, "[No LV5 Gem Chest]!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 59310, 1 )
			if $revalu == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
				$item_number = 5005
					//BC( "messagebox", "player", -1, "GUID:06348000002" )
				endif
				if $n == 2
				$item_number = 5025
					//BC( "messagebox", "player", -1, "GUID:06348000003" )
				endif
				if $n == 3
				$item_number = 5045
					//BC( "messagebox", "player", -1, "GUID:06348000004" )
				endif
				if $n == 4
				$item_number = 5065
					//BC( "messagebox", "player", -1, "GUID:06348000005" )
				endif
				if $n == 5
				$item_number = 5085
					//BC( "messagebox", "player", -1, "GUID:06348000006" )
				endif
				if $n == 6
				$item_number = 5105
					//BC( "messagebox", "player", -1, "GUID:06348000007" )
				endif
				if $n == 7
				$item_number = 5125
					//BC( "messagebox", "player", -1, "GUID:06348000008" )
				endif
				if $n == 8
				$item_number = 5145
					//BC( "messagebox", "player", -1, "GUID:06348000009" )
				endif
				if $n == 9
				$item_number = 5165
					//BC( "messagebox", "player", -1, "GUID:06348000010" )
				endif
				if $n == 10
				$item_number = 5185
					//BC( "messagebox", "player", -1, "GUID:06348000011" )
				endif
				if $n == 11
				$item_number = 5205
					//BC( "messagebox", "player", -1, "GUID:06348000012" )
				endif
				if $n == 12
				$item_number = 5225
					//BC( "messagebox", "player", -1, "GUID:06348000013" )
				endif
				if $n == 13
				$item_number = 5245
					//BC( "messagebox", "player", -1, "GUID:06348000014" )
				endif
				if $n == 14
				$item_number = 5265
					//BC( "messagebox", "player", -1, "GUID:06348000015" )
				endif
				if $n == 15
				$item_number = 5385
					//BC( "messagebox", "player", -1, "GUID:06348000016" )
				endif
				if $n == 16
				$item_number = 5405
					//BC( "messagebox", "player", -1, "GUID:06348000017" )
				endif
				if $n == 17
				$item_number = 5425
					//BC( "messagebox", "player", -1, "GUID:06348000018" )
				endif
				if $n == 18
				$item_number = 5445
					//BC( "messagebox", "player", -1, "GUID:06348000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
			
	}