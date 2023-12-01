	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin64247.s
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
		$count = GetPlayerInfo( -1, "item", 64247 )
		if 	$count < 1
			BC( "screen", "player", -1, "No LV4 gem bag!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 64247, 1)
			if $revalu == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
				$item_number = 5004
					//BC( "messagebox", "player", -1, "GUID:06062000002" )
				endif
				if $n == 2
				$item_number = 5024
					//BC( "messagebox", "player", -1, "GUID:06062000003" )
				endif
				if $n == 3
				$item_number = 5044
					//BC( "messagebox", "player", -1, "GUID:06062000004" )
				endif
				if $n == 4
				$item_number = 5064
					//BC( "messagebox", "player", -1, "GUID:06062000005" )
				endif
				if $n == 5
				$item_number = 5084
					//BC( "messagebox", "player", -1, "GUID:06062000006" )
				endif
				if $n == 6
				$item_number = 5104
					//BC( "messagebox", "player", -1, "GUID:06062000007" )
				endif
				if $n == 7
				$item_number = 5124
					//BC( "messagebox", "player", -1, "GUID:06062000008" )
				endif
				if $n == 8
				$item_number = 5144
					//BC( "messagebox", "player", -1, "GUID:06062000009" )
				endif
				if $n == 9
				$item_number = 5164
					//BC( "messagebox", "player", -1, "GUID:06062000010" )
				endif
				if $n == 10
				$item_number = 5184
					//BC( "messagebox", "player", -1, "GUID:06062000011" )
				endif
				if $n == 11
				$item_number = 5204
					//BC( "messagebox", "player", -1, "GUID:06062000012" )
				endif
				if $n == 12
				$item_number = 5224
					//BC( "messagebox", "player", -1, "GUID:06062000013" )
				endif
				if $n == 13
				$item_number = 5244
					//BC( "messagebox", "player", -1, "GUID:06062000014" )
				endif
				if $n == 14
				$item_number = 5264
					//BC( "messagebox", "player", -1, "GUID:06062000015" )
				endif
				if $n == 15
				$item_number = 5384
					//BC( "messagebox", "player", -1, "GUID:06062000016" )
				endif
				if $n == 16
				$item_number = 5404
					//BC( "messagebox", "player", -1, "GUID:06062000017" )
				endif
				if $n == 17
				$item_number = 5424
					//BC( "messagebox", "player", -1, "GUID:06062000018" )
				endif
				if $n == 18
				$item_number = 5444
					//BC( "messagebox", "player", -1, "GUID:06062000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
	}