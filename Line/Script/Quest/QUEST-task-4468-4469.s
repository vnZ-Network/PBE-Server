	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/15
	//		Author:???
	//		TaskName:QUEST-task-4468-4469.s
	//		TaskID:???(?)&(?)
	//
	//****************************************
	
	//3238???????
	//3239??????????
	
	function OnTaskDone(){
	
		$count = GetPlayerVar( -1 , 3238 )
		$count = $count + 1
		//??????????,??????3241?1
		if $count == 1
			$a = GetPlayerVar( -1 , 3241 )
			$a = $a + 1
			SetPlayerVar( -1 , 3241 , $a )
		endif
		//????????????
		if $count <= 100
			SetPlayerVar( -1 , 3238 , $count )
		endif
		
		$lv = GetPlayerInfo( -1 , "level" )
		$a = $lv * $lv
		$b = $a * 90
		$c = $lv * 4
		$d = $c - 76
		$e = $d * $b
		$f = $e / 100
		
		$g = $b / 20
		$h = $f / 20
		
		$exp1 = $g
		$exp2 = $h
		
		$count1 = GetPlayerVar( -1 , 3237 )
		$count2 = GetPlayerVar( -1 , 3238 )
		$count3 = GetPlayerVar( -1 , 3239 )
		$count4 = GetPlayerVar( -1 , 3240 )
		
		$a = $count1 + $count2
		$b = $count3 + $count4
		$c = $a + $b
		if $c <= 20
			if $lv > 45
				AddPlayerInfo( -1 , "exp" , $exp2 )
			else
				AddPlayerInfo( -1 , "exp" , $exp1 )
			endif
			BC( "screen", "player", -1, "You have completed the National's Day quest for ",$c," times. The first 20 times quest completion will give you EXP reward." )
		else
			BC( "screen", "player", -1, "You have done the National Day quest for 20 times. No more EXP will be given." )
		endif
		
		
	}
	
	
	
	
	