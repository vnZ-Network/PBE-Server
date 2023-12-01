	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??(QXK???)
	//		TaskName:ITEM-huanwupin64245.s
	//		TaskID:??????????????????
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
		$count = GetPlayerInfo( -1, "item", 59080 )
		if 	$count < 1
			BC( "screen", "player", -1, "No LV2 gem bag!" )
			return
		endif
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 59080, 1)
			if $revalu == 0
				$n = RandomNumber ( 1, 18 )
				if $n == 15
					$n = RandomNumber ( 1, 18 )
				endif
				$item_number = 0
				if $n == 1
				$item_number = 5941                                                
					//BC( "messagebox", "player", -1, "GUID:06036000002" )
				endif
				if $n == 2
				$item_number = 5942
					//BC( "messagebox", "player", -1, "GUID:06036000003" )
				endif
				if $n == 3
				$item_number = 5943
					//BC( "messagebox", "player", -1, "GUID:06036000004" )
				endif
				if $n == 4
				$item_number = 5944
					//BC( "messagebox", "player", -1, "GUID:06036000005" )
				endif
				if $n == 5
				$item_number = 5945
					//BC( "messagebox", "player", -1, "GUID:06036000006" )
				endif
				if $n == 6
				$item_number = 5946
					//BC( "messagebox", "player", -1, "GUID:06036000007" )
				endif
				if $n == 7
				$item_number = 5947
					//BC( "messagebox", "player", -1, "GUID:06036000008" )
				endif
				if $n == 8
				$item_number = 5948
					//BC( "messagebox", "player", -1, "GUID:06036000009" )
				endif
				if $n == 9
				$item_number = 5949
					//BC( "messagebox", "player", -1, "GUID:06036000010" )
				endif
				if $n == 10
				$item_number = 5950
					//BC( "messagebox", "player", -1, "GUID:06036000011" )
				endif
				if $n == 11
				$item_number = 5951
					//BC( "messagebox", "player", -1, "GUID:06036000012" )
				endif
				if $n == 12
				$item_number = 5952
					//BC( "messagebox", "player", -1, "GUID:06036000013" )
				endif
				if $n == 13
				$item_number = 5953
					//BC( "messagebox", "player", -1, "GUID:06036000014" )
				endif
				if $n == 14
				$item_number = 5954
					//BC( "messagebox", "player", -1, "GUID:06036000015" )
				endif
				if $n == 15
				$item_number = 5955
					//BC( "messagebox", "player", -1, "GUID:06036000016" )
				endif
				if $n == 16
				$item_number = 5956
					//BC( "messagebox", "player", -1, "GUID:06036000017" )
				endif
				if $n == 17
				$item_number = 5957
					//BC( "messagebox", "player", -1, "GUID:06036000018" )
				endif
				if $n == 18
				$item_number = 5958
					//BC( "messagebox", "player", -1, "GUID:06036000019" )
				endif
				if $item_number == 0 
					return
				endif
				AddPlayerInfo( -1, "item", $item_number, 1 )
			endif
	}