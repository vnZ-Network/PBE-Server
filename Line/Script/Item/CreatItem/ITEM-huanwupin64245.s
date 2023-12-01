	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin64245.s
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
		$count = GetPlayerInfo( -1, "item", 64245 )
		if 	$count < 1
			BC( "screen", "player", -1, "No LV2 gem bag!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 64245, 1)
			if $revalu == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
				$item_number = 5002                                                 
					//BC( "messagebox", "player", -1, "GUID:06060000002" )
				endif
				if $n == 2
				$item_number = 5022
					//BC( "messagebox", "player", -1, "GUID:06060000003" )
				endif
				if $n == 3
				$item_number = 5042
					//BC( "messagebox", "player", -1, "GUID:06060000004" )
				endif
				if $n == 4
				$item_number = 5062
					//BC( "messagebox", "player", -1, "GUID:06060000005" )
				endif
				if $n == 5
				$item_number = 5082
					//BC( "messagebox", "player", -1, "GUID:06060000006" )
				endif
				if $n == 6
				$item_number = 5102
					//BC( "messagebox", "player", -1, "GUID:06060000007" )
				endif
				if $n == 7
				$item_number = 5122
					//BC( "messagebox", "player", -1, "GUID:06060000008" )
				endif
				if $n == 8
				$item_number = 5142
					//BC( "messagebox", "player", -1, "GUID:06060000009" )
				endif
				if $n == 9
				$item_number = 5162
					//BC( "messagebox", "player", -1, "GUID:06060000010" )
				endif
				if $n == 10
				$item_number = 5182
					//BC( "messagebox", "player", -1, "GUID:06060000011" )
				endif
				if $n == 11
				$item_number = 5202
					//BC( "messagebox", "player", -1, "GUID:06060000012" )
				endif
				if $n == 12
				$item_number = 5222
					//BC( "messagebox", "player", -1, "GUID:06060000013" )
				endif
				if $n == 13
				$item_number = 5242
					//BC( "messagebox", "player", -1, "GUID:06060000014" )
				endif
				if $n == 14
				$item_number = 5262
					//BC( "messagebox", "player", -1, "GUID:06060000015" )
				endif
				if $n == 15
				$item_number = 5382
					//BC( "messagebox", "player", -1, "GUID:06060000016" )
				endif
				if $n == 16
				$item_number = 5402
					//BC( "messagebox", "player", -1, "GUID:06060000017" )
				endif
				if $n == 17
				$item_number = 5422
					//BC( "messagebox", "player", -1, "GUID:06060000018" )
				endif
				if $n == 18
				$item_number = 5442
					//BC( "messagebox", "player", -1, "GUID:06060000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
	}