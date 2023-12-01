	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin64508.s
	//		TaskID:??????????????
	//
	//****************************************
	
	function OnUseItem(){
	
		//????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 64508 )
		if 	$count < 1
			BC( "screen", "player", -1, "No LV4 gem bag!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 64508, 1)
			if $revalu == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
				$item_number = 5004
					//BC( "messagebox", "player", -1, "GUID:06077000002" )
				endif
				if $n == 2
				$item_number = 5024
					//BC( "messagebox", "player", -1, "GUID:06077000003" )
				endif
				if $n == 3
				$item_number = 5044
					//BC( "messagebox", "player", -1, "GUID:06077000004" )
				endif
				if $n == 4
				$item_number = 5064
					//BC( "messagebox", "player", -1, "GUID:06077000005" )
				endif
				if $n == 5
				$item_number = 5084
					//BC( "messagebox", "player", -1, "GUID:06077000006" )
				endif
				if $n == 6
				$item_number = 5104
					//BC( "messagebox", "player", -1, "GUID:06077000007" )
				endif
				if $n == 7
				$item_number = 5124
					//BC( "messagebox", "player", -1, "GUID:06077000008" )
				endif
				if $n == 8
				$item_number = 5144
					//BC( "messagebox", "player", -1, "GUID:06077000009" )
				endif
				if $n == 9
				$item_number = 5164
					//BC( "messagebox", "player", -1, "GUID:06077000010" )
				endif
				if $n == 10
				$item_number = 5184
					//BC( "messagebox", "player", -1, "GUID:06077000011" )
				endif
				if $n == 11
				$item_number = 5204
					//BC( "messagebox", "player", -1, "GUID:06077000012" )
				endif
				if $n == 12
				$item_number = 5224
					//BC( "messagebox", "player", -1, "GUID:06077000013" )
				endif
				if $n == 13
				$item_number = 5244
					//BC( "messagebox", "player", -1, "GUID:06077000014" )
				endif
				if $n == 14
				$item_number = 5264
					//BC( "messagebox", "player", -1, "GUID:06077000015" )
				endif
				if $n == 15
				$item_number = 5384
					//BC( "messagebox", "player", -1, "GUID:06077000016" )
				endif
				if $n == 16
				$item_number = 5404
					//BC( "messagebox", "player", -1, "GUID:06077000017" )
				endif
				if $n == 17
				$item_number = 5424
					//BC( "messagebox", "player", -1, "GUID:06077000018" )
				endif
				if $n == 18
				$item_number = 5444
					//BC( "messagebox", "player", -1, "GUID:06077000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
	}