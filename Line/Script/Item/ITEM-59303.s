	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/06/08
	//		Author:???
	//		TaskName:ITEM-59303.s
	//		TaskID:?????
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
		$count = GetPlayerInfo( -1, "item", 59303 )
		if 	$count < 1
			BC( "screen", "player", -1, "[No LV3 Gem Chest]!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 59303, 1)
			if $revalue == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
				$item_number = 5003
					//BC( "messagebox", "player", -1, "GUID:06344000002" )
				endif
				if $n == 2
				$item_number = 5023
					//BC( "messagebox", "player", -1, "GUID:06344000003" )
				endif
				if $n == 3
				$item_number = 5043
					//BC( "messagebox", "player", -1, "GUID:06344000004" )
				endif
				if $n == 4
				$item_number = 5063
					//BC( "messagebox", "player", -1, "GUID:06344000005" )
				endif
				if $n == 5
				$item_number = 5083
					//BC( "messagebox", "player", -1, "GUID:06344000006" )
				endif
				if $n == 6
				$item_number = 5103
					//BC( "messagebox", "player", -1, "GUID:06344000007" )
				endif
				if $n == 7
				$item_number = 5123
					//BC( "messagebox", "player", -1, "GUID:06344000008" )
				endif
				if $n == 8
				$item_number = 5143
					//BC( "messagebox", "player", -1, "GUID:06344000009" )
				endif
				if $n == 9
				$item_number = 5163
					//BC( "messagebox", "player", -1, "GUID:06344000010" )
				endif
				if $n == 10
				$item_number = 5183
					//BC( "messagebox", "player", -1, "GUID:06344000011" )
				endif
				if $n == 11
				$item_number = 5203
					//BC( "messagebox", "player", -1, "GUID:06344000012" )
				endif
				if $n == 12
				$item_number = 5223
					//BC( "messagebox", "player", -1, "GUID:06344000013" )
				endif
				if $n == 13
				$item_number = 5243
					//BC( "messagebox", "player", -1, "GUID:06344000014" )
				endif
				if $n == 14
				$item_number = 5263
					//BC( "messagebox", "player", -1, "GUID:06344000015" )
				endif
				if $n == 15
				$item_number = 5383
					//BC( "messagebox", "player", -1, "GUID:06344000016" )
				endif
				if $n == 16
				$item_number = 5403
					//BC( "messagebox", "player", -1, "GUID:06344000017" )
				endif
				if $n == 17
				$item_number = 5423
					//BC( "messagebox", "player", -1, "GUID:06344000018" )
				endif
				if $n == 18
				$item_number = 5443
					//BC( "messagebox", "player", -1, "GUID:06344000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
	}