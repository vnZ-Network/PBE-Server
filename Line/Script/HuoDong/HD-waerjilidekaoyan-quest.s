	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/0
	//		Author:??
	//		TaskName:HD-waerjilidekaoyan-quest.s
	//		TaskID:????????????
	//
	//****************************************

	function OnTaskAccept(){
	}

	
	function OnTaskDone(){
		
		//??????
		SetPlayerVar( -1 , 8, 0)
		$level = GetPlayerInfo( -1, "level" )
		$quest_ring_number = GetPlayerVar( -1 , 3203 )
		//BC( "chat", "player", -1, "test num : ", $quest_ring_number)

    //2011??????
    $now_day = GetSystemTime( "yday" )
    $result = IsTaskAccept( -1, 1991 )
    if $quest_ring_number == 5
       if $result == 0
          SetTaskDone( -1, 1991 )
          SetPlayerVar( -1, 4045, $now_day )
          $n = GetPlayerVar( -1, 3871 ) 
          $n = $n + 550
          SetPlayerVar( -1, 3871, $n )
          BC( "chat", "player", -1, "You finished the Magic Academy's quest. Garcia is satisfied with it and has promised to accept the invitation for a Luck egg. You get a rewards of 500 Lucky points from Garcia." )
          BC( "messagebox", "player", -1, "Garcia is satisfied with it and has promised to accept the invitation for a Luck egg. You get a rewards of 500 Lucky points from Garcia." )
       else 
          SetPlayerVar( -1, 4045, $now_day )
       endif
    endif 
    //????

		
		//?????,1,3%,2,6%,3,9%,4,12%,5,15%  0???
		//??????
		$title_adding = 0
		$result = HaveTitle( -1, 16 )
		if $result == 0
			$title_adding = 1
		endif
		$result = HaveTitle( -1, 17 )
		if $result == 0
			$title_adding = 2
		endif
		$result = HaveTitle( -1, 18 )
		if $result == 0
			$title_adding = 3
		endif
		$result = HaveTitle( -1, 19 )
		if $result == 0
			$title_adding = 4
		endif
		$result = HaveTitle( -1, 20 )
		if $result == 0
			$title_adding = 5
		endif
		
		
		
		//????
		$a1 = $level / 15
		$a2 = $a1 * 30
		$a3 = $a2 + 10
		$a4 = $a3 + $level
		
//		$a5 = $quest_ring_number / 11
//		$a6 = $quest_ring_number - 10
//		$a7 = $a5 * $a6
//		$a8 = $a7 * 2
//		$a9 = $a8 + $quest_ring_number
//		$a10 = $a9 + 10
//		$a11 = $a4 * $a10 
		////newgold
//=INT(r/6)*(r-5)*3+r*2+10
		$a5 = $quest_ring_number / 6
		$a6 = $quest_ring_number - 5
		$a7 = $a5 * $a6
		$a8 = $a7 * 3
		$a8t = $quest_ring_number * 2
		$a9 = $a8 + $a8t
		$a10 = $a9 + 10
		$a11 = $a4 * $a10 
		////newgold-end

		$add_money = $a11 / 2
		
		//????
		if $level < 45
			if $level >= 30
				//------------------------
				$a = $level * 100
				$b = 10 + $quest_ring_number
				$c = $a * $b
				$d = $c * 10
				$a1 = $d / 100
				$b1 = $level - 29
				$c1 = $b1 * 35
				$d1 = $c1 + 1000
				$e1 = $a1 * $d1
				$add_exp = $e1 / 1000
				//---------------------------------
				
				$a = $level - 28
				$b = $add_money * $a
				$add_money = $b / 47

			endif
		endif
		if $level < 60
			if $level >= 45
				//------------------------
				$a = $level * 100
				$b = 10 + $quest_ring_number
				$c = $a * $b
				$d = $c * 12
				$a1 = $d / 100
				$b1 = $level - 29
				$c1 = $b1 * 35
				$d1 = $c1 + 1000
				$e1 = $a1 * $d1
				$add_exp = $e1 / 1000
				//---------------------------------
				$a = $level - 34
				$b = $add_money * $a
				$add_money = $b / 37
			endif
		endif
		if $level < 75
			if $level >= 60
				//------------------------
				$a = $level * 100
				$b = 10 + $quest_ring_number
				$c = $a * $b
				$d = $c * 14
				$a1 = $d / 100
				$b1 = $level - 29
				$c1 = $b1 * 35
				$d1 = $c1 + 1000
				$e1 = $a1 * $d1
				$add_exp = $e1 / 1000
				//---------------------------------
				$a = $level - 42
				$b = $add_money * $a
				$add_money = $b / 30
			endif
		endif
		//150?????75-90????
		if $level < 150
			if $level >= 75
				//------------------------
				$a = $level * 100
				$b = 10 + $quest_ring_number
				$c = $a * $b
				$d = $c * 16
				$a1 = $d / 100
				$b1 = $level - 29
				$c1 = $b1 * 35
				$d1 = $c1 + 1000
				$e1 = $a1 * $d1
				$add_exp = $e1 / 1000
				//---------------------------------
				$a = $level + 3
				$b = $add_money * $a
				$add_money = $b / 83
			endif
		endif
		
		//????.??????
		if $title_adding == 1
			$a = $add_exp * 103
			$add_exp = $a / 100
			
			$a = $add_money * 103
			$add_money = $a / 100
		endif
		if $title_adding == 2
			$a = $add_exp * 106
			$add_exp = $a / 100
			
			$a = $add_money * 106
			$add_money = $a / 100
		endif
		if $title_adding == 3
			$a = $add_exp * 109
			$add_exp = $a / 100
			
			$a = $add_money * 109
			$add_money = $a / 100
		endif
		if $title_adding == 4
			$a = $add_exp * 112
			$add_exp = $a / 100
			
			$a = $add_money * 112
			$add_money = $a / 100
		endif
		if $title_adding == 5	
			$a = $add_exp * 115
			$add_exp = $a / 100
			
			$a = $add_money * 115
			$add_money = $a / 100
		endif
		
		//????????
		$status_value = IsExistStatus(-1 , 10519)
		if $status_value == 0
			//????
			$b2 = $add_exp / 2
			//$b1 = $add_money / 2
			//$add_money = $add_money + $b1
			$add_exp = $add_exp + $b2
			BC( "chat", "player", -1, "Get bonus EXP for Transform: ", $b2)
		endif
		//????????
		
		/////////?10???-
		if $quest_ring_number == 10
			$add_exp = $add_exp * 9
			$add_money = $add_money * 9
		else
			$add_exp = $add_exp * 2
			$add_money = $add_money * 2
		endif
		/////////?10???end
		
		AddPlayerInfo( -1, "exp", $add_exp )
		AddPlayerInfo( -1, "money", $add_money )
		
		//??????
		if $quest_ring_number == 6
			//?1??
			AddPlayerInfo( -1, "prestige", 32 ,1 )
		endif
		if $quest_ring_number == 7
			//?2??
			AddPlayerInfo( -1, "prestige", 32 ,2 )
		endif
		if $quest_ring_number == 8
			//?3??
			AddPlayerInfo( -1, "prestige", 32 ,3 )
		endif
		if $quest_ring_number == 9
			//?5??
			AddPlayerInfo( -1, "prestige", 32 ,5 )
		endif
		if $quest_ring_number == 10
			//?7??
			AddPlayerInfo( -1, "prestige", 32 ,7 )
		endif
		
		//?????
		
		//30-44	2?
		//45-59	3?
		//60-74	5?
		//75-89	6?
		//90-104	7?
		//105-120	8?
		
		if $quest_ring_number == 5
			CallGACD(-1)
		endif
		
		if $quest_ring_number == 15
			CallGACD(-1)
		endif
		
		if $quest_ring_number == 10
			$item_number = GetPlayerInfo( -1, "item", 12259  )
			if $item_number < 60
			
				if $level < 45
					if $level >= 30
						AddPlayerInfo( -1, "item", 12259  ,2)
					endif
				endif
				if $level < 60
					if $level >= 45
						AddPlayerInfo( -1, "item", 12259  ,3)
					endif
				endif
				if $level < 75
					if $level >= 60
						AddPlayerInfo( -1, "item", 12259  ,5)
					endif
				endif
				if $level < 90
					if $level >= 75
						AddPlayerInfo( -1, "item", 12259  ,6)
					endif
				endif
				if $level < 105
					if $level >= 90
						AddPlayerInfo( -1, "item", 12259  ,7)
					endif
				endif
				if $level < 120
					if $level >= 105
						AddPlayerInfo( -1, "item", 12259  ,8)
					endif
				endif
				if $level < 135
					if $level >= 120
						AddPlayerInfo( -1, "item", 12259  ,9)
					endif
				endif
				if $level < 150
					if $level >= 135
						AddPlayerInfo( -1, "item", 12259  ,10)
					endif
				endif
			else
				BC( "chat", "player", -1, "You have got 60 Deed of Trust,you can not receive more.")
			endif
		endif
		//???????
		
		
		
		
		//???????20???
		
		if $quest_ring_number == 10
			
			//????????
			$status_value = IsExistStatus(-1 , 10519)
			if $status_value == 0
				AddPlayerInfo( -1, "item", 63271, 1)
				BC( "chat", "player", -1, "Since you are transformed, you gained an extra gift: Magician's Chest." )
			endif
			//????????
			
		//???????
			AddPlayerInfo( -1, "item", 63082, 1)
			//?????
			$PlayVar = GetPlayerVar( -1, 40 )
			if $PlayVar != 1
				SetPlayerVar( -1, 40, 1 )
			endif
			//?????????
			$random_item_number = RandomNumber ( 1, 5 )
			$random_quest_number = RandomNumber ( 1, 10 )

			//45??????????
			if $level < 45
				if $level >= 30
					if $random_quest_number == 1
						//???????????,10%??
						AcceptTask(-1 , 4054)
						SetTaskLoopCount ( -1, 4054, 11 )
						BC( "messagebox", "player", -1, "Your diligence is impressive! Here, I have an\nimportant quest for you." )
						
						#player_name = GetPlayerInfo( -1, "name" )
						BC( "screen", "server", -1, "The hero ",#player_name," completed the 10th round of Magic Academy, and acquired the 11th round special quest!"  )
					endif
					if $random_item_number == 1
						AddPlayerInfo( -1, "item", 1, 2)
					endif
					if $random_item_number  == 2
						AddPlayerInfo( -1, "prestige", 32 ,10 )
					endif
				endif
			endif
			if $level < 60
				if $level >= 45
					if $random_quest_number == 1
						//???????????
						AcceptTask(-1 , 4084)
						SetTaskLoopCount ( -1, 4084, 11 )
						BC( "messagebox", "player", -1, "Your diligence is impressive! Here, I have an\nimportant quest for you." )
						#player_name = GetPlayerInfo( -1, "name" )
						BC( "screen", "server", -1, "The hero ",#player_name," completed the 10th round of Magic Academy, and acquired the 11th round special quest!"  )
					endif
					if $random_item_number  == 1
						AddPlayerInfo( -1, "item", 1, 2)
					endif
					if $random_item_number  == 2
						AddPlayerInfo( -1, "prestige", 32 ,10 )
					endif
				endif
			endif
			
			
			if $level < 75
				if $level >= 60
					if $random_quest_number == 1
						//???????????
						AcceptTask(-1 , 4114)
						SetTaskLoopCount ( -1, 4114, 11 )
						BC( "messagebox", "player", -1, "Your diligence is impressive! Here, I have an\nimportant quest for you." )
						#player_name = GetPlayerInfo( -1, "name" )
						BC( "screen", "server", -1, "The hero ",#player_name," completed the 10th round of Magic Academy, and acquired the 11th round special quest!"  )
					endif
					if $random_item_number  == 1
						AddPlayerInfo( -1, "item", 1, 2)
					endif
					if $random_item_number  == 2
						AddPlayerInfo( -1, "prestige", 32 ,10 )
					endif
				endif
			endif
			//90??150????90-75??????
			if $level < 150
				if $level >= 75
					if $random_quest_number == 1
						//???????????
						AcceptTask(-1 , 4144)
						SetTaskLoopCount ( -1, 4144, 11 )
						BC( "messagebox", "player", -1, "Your diligence is impressive! Here, I have an\nimportant quest for you." )
						#player_name = GetPlayerInfo( -1, "name" )
						BC( "screen", "server", -1, "The hero ",#player_name," completed the 10th round of Magic Academy, and acquired the 11th round special quest!"  )
					endif
					if $random_item_number  == 1
						AddPlayerInfo( -1, "item", 1, 2)
					endif
					if $random_item_number  == 2
						AddPlayerInfo( -1, "prestige", 32 ,10 )
					endif
				endif		
			endif
			//????90?????,?????
			//BC( "chat", "player", -1, "GUID:05169000017" )
		endif
		
		
		
		//?????????????????,???????????bug????
		$quest_ring_number = $quest_ring_number + 1
		SetPlayerVar( -1 , 3203 ,$quest_ring_number )
		//BC( "chat", "player", -1, "test num : ", $quest_ring_number)
	}