  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/15
	//		Author: ???
	//		TaskName:Ectype-shiliandongku-Monster-51241.s
	//		TaskID:   ??????????
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID( -1 , 233 )
		$monster_count = GetEctypeVar( -1 , 112 )
		$round = GetEctypeVar( -1 , 113 )
		$monster_count = $monster_count + 1
		SetEctypeVar( -1 , 112 , $monster_count )
		$monster_level = GetEctypeVar( -1 , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
		$monster_fieldlevel = GetEctypeVar(-1 ,90)

if $monster_fieldlevel > 0	
			//??????100?,????
		//-------------------------------------------------------------------------------------------------------------------------------------
				if $monster_level < 80
			
			//????
				if $type == 0
			//------??2??16?,?????????5???----------------
					if $monster_count == 12
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
					endif
			//-------??3??17?,???????---------------------------
					if $monster_count == 28
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 32
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
					
			//-------??4??,18?----------------------------
					if $monster_count == 45
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
					endif
			//---------??5??,19?-----------------------------
					if $monster_count == 63
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 4 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
					endif
			//---------??6??,20?,???????-----------------
					if $monster_count == 82
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
					endif
					if $monster_count == 86
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
		//-----------100??????--------------------------
					if $monster_count == 100
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
			//-------??7??.21?-------------------------
					if $monster_count == 102
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------??8??,22?-----------------------
					if $monster_count == 123
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
					endif
			//-----------??9??,23?----------------------
					if $monster_count == 145
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 5 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
					endif
					if $monster_count == 149
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//---------??10??,24?-----------------------
					if $monster_count == 168
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
					endif
			//---------------??11??,25?-------------
					if $monster_count == 192
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------200??????-------------------
					if $monster_count == 200
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
			//-------------??12??,26?------------------
					if $monster_count == 217
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
					endif
					if $monster_count == 221
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//-----------??13??,27?--------------------
					if $monster_count == 243
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 6 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
					endif
			//-----------??14??,28?--------------------
					if $monster_count == 270
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
					endif
			//----------??15??,29?--------------------------
					if $monster_count == 298
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 7 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 6, $monster_level, 6, $monster_fieldlevel , 8 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 302
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//----------300???--------------------------
					if $monster_count == 300
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
			//------------?BOSS,--------------------
					if $monster_count == 327
						$ectype_id = GetEctypeID( -1 , 233 )
						$lv = GetEctypeVar( $ectype_id , 110 )
						$boss = GetEctypeVar( $ectype_id , 0 )
						if $boss == 0
							AddLevelFieldMonster( 51248 , 14, $monster_level,14, $monster_fieldlevel , 1 , $ectype_id , 60 , 67 , 0 )
//							AddLevelMonster( 51248 , 14 , $lv , 1 , $ectype_id , 60 , 67 , 0 )
							SetEctypeVar( $ectype_id , 0 , 1 )
							BC( "screen" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
						endif
					endif
			//????
				else
					//------??2??16?,?????????5???----------------
					if $monster_count == 12
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
					endif
			//-------??3??17?,???????---------------------------
					if $monster_count == 28
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 32
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
					
			//-------??4??,18?----------------------------
					if $monster_count == 45
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
					endif
			//---------??5??,19?-----------------------------
					if $monster_count == 63
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 4 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
					endif
			//---------??6??,20?,???????-----------------
					if $monster_count == 82
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
					endif
					if $monster_count == 86
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
		//-----------100??????--------------------------
					if $monster_count == 100
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
			//-------??7??.21?-------------------------
					if $monster_count == 102
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------??8??,22?-----------------------
					if $monster_count == 123
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
					endif
			//-----------??9??,23?----------------------
					if $monster_count == 145
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 5 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
					endif
					if $monster_count == 149
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//---------??10??,24?-----------------------
					if $monster_count == 168
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
					endif
			//---------------??11??,25?-------------
					if $monster_count == 192
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------200??????-------------------
					if $monster_count == 200
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
			//-------------??12??,26?------------------
					if $monster_count == 217
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
					endif
					if $monster_count == 221
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//-----------??13??,27?--------------------
					if $monster_count == 243
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 6 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
					endif
			//-----------??14??,28?--------------------
					if $monster_count == 270
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
					endif
			//----------??15??,29?--------------------------
					if $monster_count == 298
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 7 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 50, $monster_level, 50, $monster_fieldlevel , 8 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 302
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//----------300???--------------------------
					if $monster_count == 300
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
			//------------?BOSS,--------------------
					if $monster_count == 327
						$ectype_id = GetEctypeID( -1 , 233 )
						
						$lv = GetEctypeVar( $ectype_id , 110 )
						$boss = GetEctypeVar( $ectype_id , 0 )
						if $boss == 0
							AddLevelFieldMonster( 51248 , 53, $monster_level,53, $monster_fieldlevel , 1 , $ectype_id , 60 , 67 , 0 )
//							AddLevelMonster( 51248 , 53 , $lv , 1 , $ectype_id , 60 , 67 , 0 )
							SetEctypeVar( $ectype_id , 0 , 1 )
							BC( "screen" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
						endif
					endif
				endif
				endif
		//-------------------------------------------------------------------------------------------------------------------------------------
			//????????100?,???????????
				if $monster_level >= 80
				
				//????
				if $type == 0
			//------??2??16?,?????????5???----------------
					if $monster_count == 12
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
					endif
			//-------??3??17?,???????---------------------------
					if $monster_count == 28
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 32
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
					
			//-------??4??,18?----------------------------
					if $monster_count == 45
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
					endif
			//---------??5??,19?-----------------------------
					if $monster_count == 63
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 4 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
					endif
			//---------??6??,20?,???????-----------------
					if $monster_count == 82
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
					endif
					if $monster_count == 86
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
		//-----------100??????--------------------------
					if $monster_count == 100
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
			//-------??7??.21?-------------------------
					if $monster_count == 102
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------??8??,22?-----------------------
					if $monster_count == 123
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
					endif
			//-----------??9??,23?----------------------
					if $monster_count == 145
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 5 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
					endif
					if $monster_count == 149
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//---------??10??,24?-----------------------
					if $monster_count == 168
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
					endif
			//---------------??11??,25?-------------
					if $monster_count == 192
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------200??????-------------------
					if $monster_count == 200
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
			//-------------??12??,26?------------------
					if $monster_count == 217
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
					endif
					if $monster_count == 221
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//-----------??13??,27?--------------------
					if $monster_count == 243
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 6 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
					endif
			//-----------??14??,28?--------------------
					if $monster_count == 270
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
					endif
			//----------??15??,29?--------------------------
					if $monster_count == 298
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 7 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 79, $monster_level, 79, $monster_fieldlevel , 8 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 302
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//----------300???--------------------------
					if $monster_count == 300
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
			//------------?BOSS,--------------------
					if $monster_count == 327
						$ectype_id = GetEctypeID( -1 , 233 )
						$lv = GetEctypeVar( $ectype_id , 110 )
						$boss = GetEctypeVar( $ectype_id , 0 )
						if $boss == 0
							AddLevelFieldMonster( 51248 , 14, $monster_level,14, $monster_fieldlevel , 1 , $ectype_id , 60 , 67 , 0 )
//							AddLevelMonster( 51248 , 14 , $lv , 1 , $ectype_id , 60 , 67 , 0 )
							SetEctypeVar( $ectype_id , 0 , 1 )
							BC( "screen" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
						endif
					endif
			//????
				else
					//------??2??16?,?????????5???----------------
					if $monster_count == 12
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
					endif
			//-------??3??17?,???????---------------------------
					if $monster_count == 28
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 32
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
					
			//-------??4??,18?----------------------------
					if $monster_count == 45
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
					endif
			//---------??5??,19?-----------------------------
					if $monster_count == 63
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 4 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
					endif
			//---------??6??,20?,???????-----------------
					if $monster_count == 82
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
					endif
					if $monster_count == 86
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
		//-----------100??????--------------------------
					if $monster_count == 100
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
			//-------??7??.21?-------------------------
					if $monster_count == 102
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------??8??,22?-----------------------
					if $monster_count == 123
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
					endif
			//-----------??9??,23?----------------------
					if $monster_count == 145
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 5 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
					endif
					if $monster_count == 149
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//---------??10??,24?-----------------------
					if $monster_count == 168
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
					endif
			//---------------??11??,25?-------------
					if $monster_count == 192
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------200??????-------------------
					if $monster_count == 200
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
			//-------------??12??,26?------------------
					if $monster_count == 217
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 58 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 60 , 67 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 60 , 69 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
					endif
					if $monster_count == 221
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//-----------??13??,27?--------------------
					if $monster_count == 243
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 6 , $ectype_id , 59 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 61 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 61 , 61 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
					endif
			//-----------??14??,28?--------------------
					if $monster_count == 270
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 65 , 58 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 67 , 59 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 68 , 62 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
					endif
			//----------??15??,29?--------------------------
					if $monster_count == 298
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 66 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 68 , 66 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 7 , $ectype_id , 68 , 68 , 1 )
						AddLevelFieldMonster( 51241 , 80, $monster_level, 80, $monster_fieldlevel , 8 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 302
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//----------300???--------------------------
					if $monster_count == 300
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
			//------------?BOSS,--------------------
					if $monster_count == 327
						$ectype_id = GetEctypeID( -1 , 233 )
						
						$lv = GetEctypeVar( $ectype_id , 110 )
						$boss = GetEctypeVar( $ectype_id , 0 )
						if $boss == 0
							AddLevelFieldMonster( 51248 , 53, $monster_level,53, $monster_fieldlevel , 1 , $ectype_id , 60 , 67 , 0 )
//							AddLevelMonster( 51248 , 53 , $lv , 1 , $ectype_id , 60 , 67 , 0 )
							SetEctypeVar( $ectype_id , 0 , 1 )
							BC( "screen" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
						endif
					endif
				endif
				endif
		//-------------------------------------------------------------------------------------------------------------------------------------

else

			//??????100?,????
		//-------------------------------------------------------------------------------------------------------------------------------------
				if $monster_level < 80
			
			//????
				if $type == 0
			//------??2??16?,?????????5???----------------
					if $monster_count == 12
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
					endif
			//-------??3??17?,???????---------------------------
					if $monster_count == 28
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 32
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
					
			//-------??4??,18?----------------------------
					if $monster_count == 45
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
					endif
			//---------??5??,19?-----------------------------
					if $monster_count == 63
						AddLevelMonster( 51241 , 6 , $monster_level , 4 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
					endif
			//---------??6??,20?,???????-----------------
					if $monster_count == 82
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
					endif
					if $monster_count == 86
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
		//-----------100??????--------------------------
					if $monster_count == 100
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
			//-------??7??.21?-------------------------
					if $monster_count == 102
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------??8??,22?-----------------------
					if $monster_count == 123
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
					endif
			//-----------??9??,23?----------------------
					if $monster_count == 145
						AddLevelMonster( 51241 , 6 , $monster_level , 5 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
					endif
					if $monster_count == 149
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//---------??10??,24?-----------------------
					if $monster_count == 168
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
					endif
			//---------------??11??,25?-------------
					if $monster_count == 192
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------200??????-------------------
					if $monster_count == 200
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
			//-------------??12??,26?------------------
					if $monster_count == 217
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
					endif
					if $monster_count == 221
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//-----------??13??,27?--------------------
					if $monster_count == 243
						AddLevelMonster( 51241 , 6 , $monster_level , 6 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
					endif
			//-----------??14??,28?--------------------
					if $monster_count == 270
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
					endif
			//----------??15??,29?--------------------------
					if $monster_count == 298
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 7 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 6 , $monster_level , 8 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 302
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//----------300???--------------------------
					if $monster_count == 300
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
			//------------?BOSS,--------------------
					if $monster_count == 327
						$ectype_id = GetEctypeID( -1 , 233 )
						$lv = GetEctypeVar( $ectype_id , 110 )
						$boss = GetEctypeVar( $ectype_id , 0 )
						if $boss == 0
							AddLevelMonster( 51248 , 14 , $lv , 1 , $ectype_id , 60 , 67 , 0 )
							SetEctypeVar( $ectype_id , 0 , 1 )
							BC( "screen" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
						endif
					endif
			//????
				else
					//------??2??16?,?????????5???----------------
					if $monster_count == 12
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
					endif
			//-------??3??17?,???????---------------------------
					if $monster_count == 28
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 32
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
					
			//-------??4??,18?----------------------------
					if $monster_count == 45
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
					endif
			//---------??5??,19?-----------------------------
					if $monster_count == 63
						AddLevelMonster( 51241 , 50 , $monster_level , 4 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
					endif
			//---------??6??,20?,???????-----------------
					if $monster_count == 82
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
					endif
					if $monster_count == 86
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
		//-----------100??????--------------------------
					if $monster_count == 100
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
			//-------??7??.21?-------------------------
					if $monster_count == 102
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------??8??,22?-----------------------
					if $monster_count == 123
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
					endif
			//-----------??9??,23?----------------------
					if $monster_count == 145
						AddLevelMonster( 51241 , 50 , $monster_level , 5 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
					endif
					if $monster_count == 149
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//---------??10??,24?-----------------------
					if $monster_count == 168
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
					endif
			//---------------??11??,25?-------------
					if $monster_count == 192
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------200??????-------------------
					if $monster_count == 200
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
			//-------------??12??,26?------------------
					if $monster_count == 217
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
					endif
					if $monster_count == 221
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//-----------??13??,27?--------------------
					if $monster_count == 243
						AddLevelMonster( 51241 , 50 , $monster_level , 6 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
					endif
			//-----------??14??,28?--------------------
					if $monster_count == 270
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
					endif
			//----------??15??,29?--------------------------
					if $monster_count == 298
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 7 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 50 , $monster_level , 8 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 302
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//----------300???--------------------------
					if $monster_count == 300
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
			//------------?BOSS,--------------------
					if $monster_count == 327
						$ectype_id = GetEctypeID( -1 , 233 )
						
						$lv = GetEctypeVar( $ectype_id , 110 )
						$boss = GetEctypeVar( $ectype_id , 0 )
						if $boss == 0
							AddLevelMonster( 51248 , 53 , $lv , 1 , $ectype_id , 60 , 67 , 0 )
							SetEctypeVar( $ectype_id , 0 , 1 )
							BC( "screen" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
						endif
					endif
				endif
				endif
		//-------------------------------------------------------------------------------------------------------------------------------------
			//????????100?,???????????
				if $monster_level >= 80
				
				//????
				if $type == 0
			//------??2??16?,?????????5???----------------
					if $monster_count == 12
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
					endif
			//-------??3??17?,???????---------------------------
					if $monster_count == 28
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 32
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
					
			//-------??4??,18?----------------------------
					if $monster_count == 45
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
					endif
			//---------??5??,19?-----------------------------
					if $monster_count == 63
						AddLevelMonster( 51241 , 79 , $monster_level , 4 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
					endif
			//---------??6??,20?,???????-----------------
					if $monster_count == 82
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
					endif
					if $monster_count == 86
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
		//-----------100??????--------------------------
					if $monster_count == 100
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
			//-------??7??.21?-------------------------
					if $monster_count == 102
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------??8??,22?-----------------------
					if $monster_count == 123
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
					endif
			//-----------??9??,23?----------------------
					if $monster_count == 145
						AddLevelMonster( 51241 , 79 , $monster_level , 5 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
					endif
					if $monster_count == 149
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//---------??10??,24?-----------------------
					if $monster_count == 168
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
					endif
			//---------------??11??,25?-------------
					if $monster_count == 192
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------200??????-------------------
					if $monster_count == 200
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
			//-------------??12??,26?------------------
					if $monster_count == 217
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
					endif
					if $monster_count == 221
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//-----------??13??,27?--------------------
					if $monster_count == 243
						AddLevelMonster( 51241 , 79 , $monster_level , 6 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
					endif
			//-----------??14??,28?--------------------
					if $monster_count == 270
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
					endif
			//----------??15??,29?--------------------------
					if $monster_count == 298
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 7 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 79 , $monster_level , 8 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 302
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//----------300???--------------------------
					if $monster_count == 300
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
			//------------?BOSS,--------------------
					if $monster_count == 327
						$ectype_id = GetEctypeID( -1 , 233 )
						$lv = GetEctypeVar( $ectype_id , 110 )
						$boss = GetEctypeVar( $ectype_id , 0 )
						if $boss == 0
							AddLevelMonster( 51248 , 14 , $lv , 1 , $ectype_id , 60 , 67 , 0 )
							SetEctypeVar( $ectype_id , 0 , 1 )
							BC( "screen" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
						endif
					endif
			//????
				else
					//------??2??16?,?????????5???----------------
					if $monster_count == 12
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "2nd Round: Trial Monsters have appeared in Section B!" )
					endif
			//-------??3??17?,???????---------------------------
					if $monster_count == 28
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "3rd Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 32
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
					
			//-------??4??,18?----------------------------
					if $monster_count == 45
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "4th Round: Trial Monsters have appeared in Section D!" )
					endif
			//---------??5??,19?-----------------------------
					if $monster_count == 63
						AddLevelMonster( 51241 , 80 , $monster_level , 4 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "5th Round: Trial Monsters have appeared in Section A!" )
					endif
			//---------??6??,20?,???????-----------------
					if $monster_count == 82
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "6th Round: Trial Monsters have appeared in Section B!" )
					endif
					if $monster_count == 86
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
		//-----------100??????--------------------------
					if $monster_count == 100
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
			//-------??7??.21?-------------------------
					if $monster_count == 102
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "7th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------??8??,22?-----------------------
					if $monster_count == 123
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "8th Round: Trial Monsters have appeared in Section D!" )
					endif
			//-----------??9??,23?----------------------
					if $monster_count == 145
						AddLevelMonster( 51241 , 80 , $monster_level , 5 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "9th Round: Trial Monsters have appeared in Section A!" )
					endif
					if $monster_count == 149
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//---------??10??,24?-----------------------
					if $monster_count == 168
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "10th Round: Trial Monsters have appeared in Section B!" )
					endif
			//---------------??11??,25?-------------
					if $monster_count == 192
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "11th Round: Trial Monsters have appeared in Section C!" )
					endif
			//----------200??????-------------------
					if $monster_count == 200
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
			//-------------??12??,26?------------------
					if $monster_count == 217
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 58 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 60 , 67 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 60 , 69 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 58 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
						BC( "chat" , "map" , $ectype_id , "12th Round: Trial Monsters have appeared in Section D!" )
					endif
					if $monster_count == 221
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//-----------??13??,27?--------------------
					if $monster_count == 243
						AddLevelMonster( 51241 , 80 , $monster_level , 6 , $ectype_id , 59 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 61 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 61 , 61 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 58 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
						BC( "chat" , "map" , $ectype_id , "13th Round: Trial Monsters have appeared in Section A!" )
					endif
			//-----------??14??,28?--------------------
					if $monster_count == 270
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 65 , 58 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 67 , 59 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 68 , 62 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 65 , 61 , 1 )
						BC( "screen" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
						BC( "chat" , "map" , $ectype_id , "14th Round: Trial Monsters have appeared in Section B!" )
					endif
			//----------??15??,29?--------------------------
					if $monster_count == 298
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 66 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 68 , 66 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 7 , $ectype_id , 68 , 68 , 1 )
						AddLevelMonster( 51241 , 80 , $monster_level , 8 , $ectype_id , 64 , 69 , 1 )
						BC( "screen" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
						BC( "chat" , "map" , $ectype_id , "15th Round: Trial Monsters have appeared in Section C!" )
					endif
					if $monster_count == 302
						BC( "screen" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectype_id , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectype_id , 4 )
					endif
			//----------300???--------------------------
					if $monster_count == 300
						$time = $round * 10
						BC("screen", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectype_id, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
			//------------?BOSS,--------------------
					if $monster_count == 327
						$ectype_id = GetEctypeID( -1 , 233 )
						
						$lv = GetEctypeVar( $ectype_id , 110 )
						$boss = GetEctypeVar( $ectype_id , 0 )
						if $boss == 0
							AddLevelMonster( 51248 , 53 , $lv , 1 , $ectype_id , 60 , 67 , 0 )
							SetEctypeVar( $ectype_id , 0 , 1 )
							BC( "screen" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectype_id , "The Trial Adjudicator appears!!" )
						endif
					endif
				endif
				endif
		//-------------------------------------------------------------------------------------------------------------------------------------
		
endif


	}
	
