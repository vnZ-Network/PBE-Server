	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/13
	//		Author:???
	//		TaskName:Ectype-Battle-259-Init.s
	//		TaskID:?????
	//
	//****************************************
	//????
	//0???
		
	function OnCreate(){
		
		//????ID???????ID
		$ectype_id = GetCurEctypeID()
		StartEctypeTimer($ectype_id , 0 )
	}
	
	function InitTimer(){
		
		//????ID???????ID
		//???????,???????????????????????,??????
		$ectype_id = GetCurEctypeID()
		SetEctypeTimer(0, 10, "EctypeTime0")
		SetEctypeTimer(0, 62, "EctypeTime1")
		SetEctypeTimer(0, 90, "EctypeTime2")
		SetEctypeTimer(0, 120, "EctypeTime3")
		SetEctypeTimer(0, 240, "EctypeTime4")
		SetEctypeTimer(0, 360, "EctypeTime5")
		SetEctypeTimer(0, 480, "EctypeTime6")
		SetEctypeTimer(0, 600, "EctypeTime7")
		SetEctypeTimer(0, 720, "EctypeTime8")
		
  	StartEctypeTimer($ectype_id , 0 )
  	StartEctypeTimer($ectype_id , 1 ) 	
  	StartEctypeTimer($ectype_id , 2 ) 	
  	StartEctypeTimer($ectype_id , 3 ) 
  	StartEctypeTimer($ectype_id , 4 ) 	
  	StartEctypeTimer($ectype_id , 5 ) 
  	StartEctypeTimer($ectype_id , 6 ) 
  	StartEctypeTimer($ectype_id , 7 ) 
  	StartEctypeTimer($ectype_id , 8 ) 

  		
	}
				
	function EctypeTime0(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
		BC("chat", "map", $ectype_id, "Warriors! Welcome to the Champion's Arena! Enjoy the thrill of battle!" )
		BC("screen", "map", $ectype_id, "Warriors! Welcome to the Champion's Arena! Enjoy the thrill of battle!" )
	
	}
	
	function EctypeTime1(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
		
		//???	59307 59308 59309 59310
			//??????1
			$mon_fuwen_1 = 59306
			$mon_fuwen_2 = 59310
			$Lucky1 = RandomNumber(1,3)
			$mon_fuwen_1 = $mon_fuwen_1 + $Lucky1
			
			//????????	
			UpdateBattleStatus($ectype_id)
			BC("chat", "map", $ectype_id, "If a warrior is killed in battle, he or she will receive a blessing from Odin." )
			BC("screen", "map", $ectype_id, "If a warrior is killed in battle, he or she will receive a blessing from Odin." )					
			
			//????1 ?????  ??????4??
			$Lucky2 = RandomNumber(1,4)
			if $Lucky2 == 1
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,138,137,1,0,0)
			endif
			if $Lucky2 == 2
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,138,1,0,0)
			endif
			if $Lucky2 == 3
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,137,188,1,0,0)
			endif
			if $Lucky2 == 4
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,190,1,0,0)
			endif	
			BC("screen", "map", $ectype_id, "A mysterious rune has appeared in the Arena!" )	

			//????2????? 
			$Lucky3 = RandomNumber(1,4)
			if $Lucky3 == 1
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,120,114,1,0,0)
			endif
			if $Lucky3 == 2
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,162,102,1,0,0)
			endif
			if $Lucky3 == 3
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,204,213,1,0,0)
			endif
			if $Lucky3 == 4
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,161,236,1,0,0)
			endif					
		
	
	}	
	
	function EctypeTime2(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
//		BC("chat", "map", $ectype_id, "If a warrior is killed in battle, he or she will receive a blessing from Odin." )
//		BC("screen", "map", $ectype_id, "If a warrior is killed in battle, he or she will receive a blessing from Odin." )		
			
		//????????	
		UpdateBattleStatus($ectype_id)
		
	
	}
	
	function EctypeTime3(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
		
		//???	59307 59308 59309 59310
			//??????1
			$mon_fuwen_1 = 59306
			$mon_fuwen_2 = 59310
			$Lucky1 = RandomNumber(1,3)
			$mon_fuwen_1 = $mon_fuwen_1 + $Lucky1
			
			//????????	
			UpdateBattleStatus($ectype_id)
			
			//????1 ?????  ??????4??
			$Lucky2 = RandomNumber(1,4)
			if $Lucky2 == 1
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,138,137,1,0,0)
			endif
			if $Lucky2 == 2
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,138,1,0,0)
			endif
			if $Lucky2 == 3
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,137,188,1,0,0)
			endif
			if $Lucky2 == 4
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,190,1,0,0)
			endif	
			BC("screen", "map", $ectype_id, "A mysterious rune has appeared in the Arena!" )	

			//????2????? 
			$Lucky3 = RandomNumber(1,4)
			if $Lucky3 == 1
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,120,114,1,0,0)
			endif
			if $Lucky3 == 2
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,162,102,1,0,0)
			endif
			if $Lucky3 == 3
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,204,213,1,0,0)
			endif
			if $Lucky3 == 4
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,161,236,1,0,0)
			endif					
		
	
	}				
	
	function EctypeTime4(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
		
		//???	59307 59308 59309 59310
			//??????1
			$mon_fuwen_1 = 59306
			$mon_fuwen_2 = 59310
			$Lucky1 = RandomNumber(1,3)
			$mon_fuwen_1 = $mon_fuwen_1 + $Lucky1
			
			//????????	
			UpdateBattleStatus($ectype_id)
			
			//????1 ?????  ??????4??
			$Lucky2 = RandomNumber(1,4)
			if $Lucky2 == 1
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,138,137,1,0,0)
			endif
			if $Lucky2 == 2
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,138,1,0,0)
			endif
			if $Lucky2 == 3
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,137,188,1,0,0)
			endif
			if $Lucky2 == 4
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,190,1,0,0)
			endif	
			BC("screen", "map", $ectype_id, "A mysterious rune has appeared in the Arena!" )	

			//????2????? 
			$Lucky3 = RandomNumber(1,4)
			if $Lucky3 == 1
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,120,114,1,0,0)
			endif
			if $Lucky3 == 2
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,162,102,1,0,0)
			endif
			if $Lucky3 == 3
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,204,213,1,0,0)
			endif
			if $Lucky3 == 4
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,161,236,1,0,0)
			endif					
		
	
	}				

	function EctypeTime5(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
		
		//???	59307 59308 59309 59310
			//??????1
			$mon_fuwen_1 = 59306
			$mon_fuwen_2 = 59310
			$Lucky1 = RandomNumber(1,3)
			$mon_fuwen_1 = $mon_fuwen_1 + $Lucky1
			
			//????????	
			UpdateBattleStatus($ectype_id)
			
			//????1 ?????  ??????4??
			$Lucky2 = RandomNumber(1,4)
			if $Lucky2 == 1
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,138,137,1,0,0)
			endif
			if $Lucky2 == 2
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,138,1,0,0)
			endif
			if $Lucky2 == 3
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,137,188,1,0,0)
			endif
			if $Lucky2 == 4
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,190,1,0,0)
			endif	
			BC("screen", "map", $ectype_id, "A mysterious rune has appeared in the Arena!" )	

			//????2????? 
			$Lucky3 = RandomNumber(1,4)
			if $Lucky3 == 1
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,120,114,1,0,0)
			endif
			if $Lucky3 == 2
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,162,102,1,0,0)
			endif
			if $Lucky3 == 3
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,204,213,1,0,0)
			endif
			if $Lucky3 == 4
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,161,236,1,0,0)
			endif					
		
	
	}				

	function EctypeTime6(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
		
		//???	59307 59308 59309 59310
			//??????1
			$mon_fuwen_1 = 59306
			$mon_fuwen_2 = 59310
			$Lucky1 = RandomNumber(1,3)
			$mon_fuwen_1 = $mon_fuwen_1 + $Lucky1
			
			//????????	
			UpdateBattleStatus($ectype_id)
			
			//????1 ?????  ??????4??
			$Lucky2 = RandomNumber(1,4)
			if $Lucky2 == 1
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,138,137,1,0,0)
			endif
			if $Lucky2 == 2
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,138,1,0,0)
			endif
			if $Lucky2 == 3
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,137,188,1,0,0)
			endif
			if $Lucky2 == 4
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,190,1,0,0)
			endif	
			BC("screen", "map", $ectype_id, "A mysterious rune has appeared in the Arena!" )	

			//????2????? 
			$Lucky3 = RandomNumber(1,4)
			if $Lucky3 == 1
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,120,114,1,0,0)
			endif
			if $Lucky3 == 2
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,162,102,1,0,0)
			endif
			if $Lucky3 == 3
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,204,213,1,0,0)
			endif
			if $Lucky3 == 4
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,161,236,1,0,0)
			endif					
		
	
	}				

	function EctypeTime7(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
		
		//???	59307 59308 59309 59310
			//??????1
			$mon_fuwen_1 = 59306
			$mon_fuwen_2 = 59310
			$Lucky1 = RandomNumber(1,3)
			$mon_fuwen_1 = $mon_fuwen_1 + $Lucky1
			
			//????????	
			UpdateBattleStatus($ectype_id)
			
			//????1 ?????  ??????4??
			$Lucky2 = RandomNumber(1,4)
			if $Lucky2 == 1
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,138,137,1,0,0)
			endif
			if $Lucky2 == 2
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,138,1,0,0)
			endif
			if $Lucky2 == 3
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,137,188,1,0,0)
			endif
			if $Lucky2 == 4
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,190,1,0,0)
			endif	
			BC("screen", "map", $ectype_id, "A mysterious rune has appeared in the Arena!" )	

			//????2????? 
			$Lucky3 = RandomNumber(1,4)
			if $Lucky3 == 1
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,120,114,1,0,0)
			endif
			if $Lucky3 == 2
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,162,102,1,0,0)
			endif
			if $Lucky3 == 3
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,204,213,1,0,0)
			endif
			if $Lucky3 == 4
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,161,236,1,0,0)
			endif					
		
	
	}			
	
	function EctypeTime8(){
		
	//????ID???????ID
		$ectype_id = GetCurEctypeID()
		
		//???	59307 59308 59309 59310
			//??????1
			$mon_fuwen_1 = 59306
			$mon_fuwen_2 = 59310
			$Lucky1 = RandomNumber(1,3)
			$mon_fuwen_1 = $mon_fuwen_1 + $Lucky1
			
			//????????	
			UpdateBattleStatus($ectype_id)
			
			//????1 ?????  ??????4??
			$Lucky2 = RandomNumber(1,4)
			if $Lucky2 == 1
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,138,137,1,0,0)
			endif
			if $Lucky2 == 2
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,138,1,0,0)
			endif
			if $Lucky2 == 3
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,137,188,1,0,0)
			endif
			if $Lucky2 == 4
				AddMonsterByFloat($mon_fuwen_1,1,$ectype_id,190,190,1,0,0)
			endif	
			BC("screen", "map", $ectype_id, "A mysterious rune has appeared in the Arena!" )	

			//????2????? 
			$Lucky3 = RandomNumber(1,4)
			if $Lucky3 == 1
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,120,114,1,0,0)
			endif
			if $Lucky3 == 2
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,162,102,1,0,0)
			endif
			if $Lucky3 == 3
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,204,213,1,0,0)
			endif
			if $Lucky3 == 4
				AddMonsterByFloat($mon_fuwen_2,1,$ectype_id,161,236,1,0,0)
			endif					
		
	
	}				
