	function OnRequest(){
	
		

	}
	

	function OnOption0(){
	
     $lang = GetPlayerVar(-1, 3301)
	$mon1 = 51465
     $boss1 = 51471
     $mon2 = 51155
     $boss2 = 51161
     $mon3 = 51175
     $boss3 = 51181
	$ectID = GetEctypeID(-1 ,223)
		
		if $ectID > 0			
			$Dif = GetEctypeVar(-1 ,0)
			$num = GetEctypeVar(-1 ,114)
			$num = $num + 1
			SetEctypeVar(-1 ,114 ,$num )
			if $num < 5
				StartEctypeTimer(-1 , 223 ,1)
			endif			
			#name = GetPlayerInfo(-1 , "name")
			if $Dif == 2
				AddMonster( $mon1, 10,$ectID, 80, 80, 15 )
				if $num == 5
					AddMonster( $boss1, 1,$ectID, 80, 80, 0 )
				else
                         if $lang == 1
                              BC( "chat" , "player" , #name , "[color=FF22E974]Thổi Tù Và triệu hồi lính dung nham lượt: [color=ffB54ECA]", $num, "[color=ffB54ECA] /5")
                         endif
                         if $lang == 2
                              BC( "chat" , "player" , #name , "[color=FF22E974]sounds the Trumpet of War and summon Firetroopers: [color=ffB54ECA]", $num, "[color=ffB54ECA] /5")
                         endif
				endif
			endif
			if $Dif == 1
				AddMonster( $mon1, 10,$ectID, 80, 80, 15 )
				if $num == 5
					AddMonster( $boss1, 1,$ectID, 80, 80, 0 )
				else
                         if $lang == 1
                              BC( "chat" , "player" , #name , "[color=FF22E974]Thổi Tù Và triệu hồi lính dung nham lượt: [color=ffB54ECA]", $num, "[color=ffB54ECA] /5")
                         endif
                         if $lang == 2
                              BC( "chat" , "player" , #name , "[color=FF22E974]sounds the Trumpet of War and summon Firetroopers: [color=ffB54ECA]", $num, "[color=ffB54ECA] /5")
                         endif
				endif
			endif			
			if $Dif == 0
				AddMonster( $mon1, 10,$ectID, 80, 80, 15 )
				if $num == 5
					AddMonster( $boss1, 1,$ectID, 80, 80, 0 )
				else
                         if $lang == 1
                              BC( "chat" , "player" , #name , "[color=FF22E974]Thổi Tù Và triệu hồi lính dung nham lượt: [color=ffB54ECA]", $num, "[color=ffB54ECA] /5")
                         endif
                         if $lang == 2
                              BC( "chat" , "player" , #name , "[color=FF22E974]sounds the Trumpet of War and summon Firetroopers: [color=ffB54ECA]", $num, "[color=ffB54ECA] /5")
                         endif
				endif
			endif
			DeleteNPC(1920, $ectID)
		endif
		
		

		
	}
	