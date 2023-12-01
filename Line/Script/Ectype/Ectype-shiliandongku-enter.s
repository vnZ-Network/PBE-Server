	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/05
	//		Author:???
	//		TaskName:Ectype-shiliandongku-enter.s
	//		TaskID:????????
	//
	//****************************************

	function OnCreate(){
		
	}
	
	function InitTimer(){
		DeleteNPC(880 , -1)
		$ectype_id = GetEctypeID( -1 , 233 )
		//??????
		SetEctypeTimer( 1 , 10 , "EctypeTime0" )
		//???
		SetEctypeTimer( 2 , 10 , "EctypeTime1" )
		//?????
		SetEctypeTimer( 4 , 20 , "EctypeTime3" )
		
		//2010????-?????
		//SetEctypeTimer( 5 , 15 , "EctypeTime4" )
		
		//2010????-??????boss????
		//SetEctypeTimer( 6 , 15 , "EctypeTime5" )
		
	}
	
//--------???????,??15??-------------------------------------------
	function EctypeTime0(){
		$ectype_id = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		
		//????start
//32288	?????	187	133	123
//32289	?????	233	174	199
//32290	?????	166	96	119
//			AddMonsterByFloat(32289,1,$ectype_id,174,149,0)
		//????end
//??????????100?,??79,80??id???		
		if $lv >= 80
		
			if $type == 0
				if $monster_fieldlevel > 0
					AddLevelFieldMonster( 51241 , 79 , $lv , 79 , $monster_fieldlevel , 4 , $ectype_id , 59 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 79 , $lv , 79 , $monster_fieldlevel , 4 , $ectype_id , 61 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 79 , $lv , 79 , $monster_fieldlevel , 4 , $ectype_id , 61 , 61 , 1 )
					AddLevelFieldMonster( 51241 , 79 , $lv , 79 , $monster_fieldlevel , 3 , $ectype_id , 58 , 61 , 1 )
				else
					AddLevelMonster( 51241 , 79 , $lv , 4 , $ectype_id , 59 , 58 , 1 )
					AddLevelMonster( 51241 , 79 , $lv , 4 , $ectype_id , 61 , 58 , 1 )
					AddLevelMonster( 51241 , 79 , $lv , 4 , $ectype_id , 61 , 61 , 1 )
					AddLevelMonster( 51241 , 79 , $lv , 3 , $ectype_id , 58 , 61 , 1 )
				endif
			else
				if $monster_fieldlevel > 0
					AddLevelFieldMonster( 51241 , 80 , $lv , 80 , $monster_fieldlevel , 4 , $ectype_id , 59 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 80 , $lv , 80 , $monster_fieldlevel , 4 , $ectype_id , 61 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 80 , $lv , 80 , $monster_fieldlevel , 4 , $ectype_id , 61 , 61 , 1 )
					AddLevelFieldMonster( 51241 , 80 , $lv , 80 , $monster_fieldlevel , 3 , $ectype_id , 58 , 61 , 1 )
				else
					AddLevelMonster( 51241 , 80 , $lv , 4 , $ectype_id , 59 , 58 , 1 )
					AddLevelMonster( 51241 , 80 , $lv , 4 , $ectype_id , 61 , 58 , 1 )
					AddLevelMonster( 51241 , 80 , $lv , 4 , $ectype_id , 61 , 61 , 1 )
					AddLevelMonster( 51241 , 80 , $lv , 3 , $ectype_id , 58 , 61 , 1 )
				endif
			endif
			BC( "screen" , "map" , $ectype_id , "The first group of monsters will spawn in Area A!")
			BC( "chat" , "map" , $ectype_id , "The first group of monsters will spawn in Area A!" )
			
		else
		
			if $type == 0
				if $monster_fieldlevel > 0
					AddLevelFieldMonster( 51241 , 6 , $lv , 6 , $monster_fieldlevel , 4 , $ectype_id , 59 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 6 , $lv , 6 , $monster_fieldlevel , 4 , $ectype_id , 61 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 6 , $lv , 6 , $monster_fieldlevel , 4 , $ectype_id , 61 , 61 , 1 )
					AddLevelFieldMonster( 51241 , 6 , $lv , 6 , $monster_fieldlevel , 3 , $ectype_id , 58 , 61 , 1 )
				else
					AddLevelMonster( 51241 , 6 , $lv , 4 , $ectype_id , 59 , 58 , 1 )
					AddLevelMonster( 51241 , 6 , $lv , 4 , $ectype_id , 61 , 58 , 1 )
					AddLevelMonster( 51241 , 6 , $lv , 4 , $ectype_id , 61 , 61 , 1 )
					AddLevelMonster( 51241 , 6 , $lv , 3 , $ectype_id , 58 , 61 , 1 )
				endif
			else
				if $monster_fieldlevel > 0
					AddLevelFieldMonster( 51241 , 50 , $lv , 50 , $monster_fieldlevel , 4 , $ectype_id , 59 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 50 , $lv , 50 , $monster_fieldlevel , 4 , $ectype_id , 61 , 58 , 1 )
					AddLevelFieldMonster( 51241 , 50 , $lv , 50 , $monster_fieldlevel , 4 , $ectype_id , 61 , 61 , 1 )
					AddLevelFieldMonster( 51241 , 50 , $lv , 50 , $monster_fieldlevel , 3 , $ectype_id , 58 , 61 , 1 )
				else
					AddLevelMonster( 51241 , 50 , $lv , 4 , $ectype_id , 59 , 58 , 1 )
					AddLevelMonster( 51241 , 50 , $lv , 4 , $ectype_id , 61 , 58 , 1 )
					AddLevelMonster( 51241 , 50 , $lv , 4 , $ectype_id , 61 , 61 , 1 )
					AddLevelMonster( 51241 , 50 , $lv , 3 , $ectype_id , 58 , 61 , 1 )
				endif
					
			endif
			BC( "screen" , "map" , $ectype_id , "The first group of monsters will spawn in Area A!")
			BC( "chat" , "map" , $ectype_id , "The first group of monsters will spawn in Area A!" )
			
		endif
	}
//---------???-------------------------------------------	
	function EctypeTime1(){
		$ectype_id = GetEctypeID( -1 , 233 )
		StartEctypeTimer( $ectype_id , 2 )
		$a = GetEctypeVar( $ectype_id , 113 )
		$a = $a + 1
		SetEctypeVar( $ectype_id , 113 , $a )
	}
//--------15???BOSS-------------------------------------------		
	function EctypeTime2(){
		
	}
//----------??????---------------------------------------		
	function EctypeTime3(){
	
		$ectype_id = GetEctypeID( -1 , 233 )
		$turnround = GetEctypeVar( $ectype_id , 114 )
		if $turnround == 0
			call CallMonster1()
		endif
		if $turnround == 1
			call CallMonster2()
		endif
		if $turnround == 2
			call CallMonster3()
		endif
		if $turnround == 3
			call CallMonster4()
		endif
		if $turnround == 4
			call CallMonster5()
		endif
		
	}
	
	
////-----------2010???? ??????-------------------
//	function EctypeTime4(){
//		$ectype_id = GetEctypeID( -1 , 233 )
//		AddMonsterByFloat( 32246, 1, $ectype_id, 163, 152, 1 )
//		AddMonsterByFloat( 32247, 1, $ectype_id, 157, 176, 1 )
//		BC( "screen" , "map" , $ectype_id , "GUID:04224000004" )
//	}
//	
//	
//	
//	
////-----------2010???? ????-------------------
//	function EctypeTime5(){
//		$ectype_id = GetEctypeID( -1 , 233 )
//		$monster_level = GetEctypeVar( -1 , 110 )
//		
//		AddLevelMonster( 32250 , 76 , $monster_level , 1 , $ectype_id , 65 , 61 , 1 )
//		BC( "screen" , "map" , $ectype_id , "GUID:04224000005" )
//	}
	
	
	

//----------??????---------------------------------------		
	function CallMonster1(){
		
		$ectype_id = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
		$monster_fieldlevel = GetEctypeVar(-1 ,90)
		
		if $type == 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51242 , 12 , $lv , 12 , $monster_fieldlevel , 1 , $ectype_id , 68 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51242, 12 , $lv ,$ectype_id ,  68 , 67 , 1 )
			endif
		else
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51242 , 51 , $lv , 51 , $monster_fieldlevel , 1 , $ectype_id , 68 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51242, 51 , $lv ,$ectype_id ,  68 , 67 , 1 )
			endif
		endif
		SetEctypeVar( $ectype_id , 115 , $a)
		BC( "screen" , "map" , $ectype_id , "The 1st Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		BC( "chat" , "map" , $ectype_id , "The 1st Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		SetEctypeVar( $ectype_id , 114 , 1 )
		
	}
	
	function CallMonster2(){
		$ectype_id = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
		$monster_fieldlevel = GetEctypeVar(-1 ,90)


		if $type == 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51243 , 12 , $lv , 12 , $monster_fieldlevel , 1 , $ectype_id,  68 , 61 , 1 )
			else
				$a = AddSingleLevelMonster( 51243, 12 , $lv ,$ectype_id ,  68 , 61 , 1 )
			endif
		else
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51243 , 51 , $lv , 51 , $monster_fieldlevel , 1 , $ectype_id ,  68 , 61 , 1 )
			else
					$a = AddSingleLevelMonster( 51243, 51 , $lv ,$ectype_id ,  68 , 61 , 1 )
			endif
		endif	
		
		SetEctypeVar( $ectype_id , 116 , $a)
		BC( "screen" , "map" , $ectype_id , "The 2nd Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		BC( "chat" , "map" , $ectype_id , "The 2nd Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		SetEctypeVar( $ectype_id , 114 , 2 )
	}
	
	function CallMonster3(){
		$ectype_id = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
		
		$monster_fieldlevel = GetEctypeVar(-1 ,90)


		if $type == 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51244 , 12 , $lv , 12 , $monster_fieldlevel , 1 , $ectype_id,  58 , 61 , 1 )
			else
				$a = AddSingleLevelMonster( 51244, 12 , $lv ,$ectype_id ,  58 , 61 , 1 )
			endif
		else
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51244 , 51 , $lv , 51 , $monster_fieldlevel , 1 , $ectype_id ,  58 , 61 , 1 )
			else
					$a = AddSingleLevelMonster( 51244, 51 , $lv ,$ectype_id ,  58 , 61 , 1 )
			endif
		endif	
		
		SetEctypeVar( $ectype_id , 117 , $a)
		BC( "screen" , "map" , $ectype_id , "The 3rd Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		BC( "chat" , "map" , $ectype_id , "The 3rd Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		SetEctypeVar( $ectype_id , 114 , 3 )
	}
	
	function CallMonster4(){	
		$ectype_id = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
		
		if $type == 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51245 , 12 , $lv , 12 , $monster_fieldlevel , 1 , $ectype_id,  58 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51245, 12 , $lv ,$ectype_id ,  58 , 67 , 1 )
			endif
		else
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51245 , 51 , $lv , 51 , $monster_fieldlevel , 1 , $ectype_id ,  58 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51245, 51 , $lv ,$ectype_id ,  58 , 67 , 1 )
			endif
		endif	
		
		
//		if $type == 0
//			$a = AddSingleLevelMonster( 51245, 12 , $lv ,$ectype_id ,  58 , 69 , 1 )
//		else
//			$a = AddSingleLevelMonster( 51245, 51 , $lv ,$ectype_id ,  58 , 69 , 1 )
//		endif	
		SetEctypeVar( $ectype_id , 118 , $a)
		BC( "screen" , "map" , $ectype_id , "The 4th Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		BC( "chat" , "map" , $ectype_id , "The 4th Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		SetEctypeVar( $ectype_id , 114 , 4 )
	}
	
	function CallMonster5(){
		$ectype_id = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
		
		if $type == 0
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51246 , 12 , $lv , 12 , $monster_fieldlevel , 1 , $ectype_id,  68 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51246, 12 , $lv ,$ectype_id ,  68 , 67 , 1 )
			endif
		else
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51246 , 51 , $lv , 51 , $monster_fieldlevel , 1 , $ectype_id ,  68 , 67 , 1 )
			else
				$a = AddSingleLevelMonster( 51246, 51 , $lv ,$ectype_id ,  68 , 67 , 1 )
			endif
		endif	
		
		
//		if $type == 0
//			$a = AddSingleLevelMonster( 51246, 12 , $lv ,$ectype_id ,  64 , 69 , 1 )
//		else
//			$a = AddSingleLevelMonster( 51246, 51 , $lv ,$ectype_id ,  64 , 69 , 1 )
//		endif	
		SetEctypeVar( $ectype_id , 119 , $a)
		BC( "screen" , "map" , $ectype_id , "The 5th Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		BC( "chat" , "map" , $ectype_id , "The 5th Fallen Totem appears. If it is not destroyed in 50 seconds, it will summon Fallen Trial Monsters!!" )
		SetEctypeVar( $ectype_id , 114 , 5 )
	}
	