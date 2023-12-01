	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/13
	//		Author:???
	//		TaskName:Ectype-ShenLong-init.s
	//		TaskID:???
	//
	//****************************************
	
	function OnCreate(){
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,187 )
		
	}
	
	
	function InitTimer(){
	
	  //??????????
	  SetEctypeTimer( 0, 2, "EctypeTime1" )
//	  SetEctypeTimer( 1, 360, "EctypeTime2" )
//	  SetEctypeTimer( 2, 60, "EctypeTime3" )
//	  SetEctypeTimer( 3, 120, "EctypeTime3" )
//	  SetEctypeTimer( 4, 180, "EctypeTime3" )
//	  SetEctypeTimer( 5, 240, "EctypeTime3" )
//	  SetEctypeTimer( 6, 300, "EctypeTime3" )
	  SetEctypeTimer( 7, 360, "EctypeTime4" )
//	  SetEctypeTimer( 8, 420, "EctypeTime3" )
//	  SetEctypeTimer( 9, 480, "EctypeTime3" )
//	  SetEctypeTimer( 10, 540, "EctypeTime3" )
	    
	}
	
	//?????
	function EctypeTime1(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,187 )
		$ectype_type = GetEctypeVar( -1, 117 )
		//??????????
		$monster_fieldlevel = GetEctypeVar( -1, 90 )
		
		//????start
//32288	?????	187	133	123
//32289	?????	233	174	199
//32290	?????	166	96	119
//			AddMonsterByFloat(32288,1,$ectype_ID,133,123,0)
		//????end
		
		//????
		//????????100?,????????????
		if $ectype_type >= 80
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51253, 81, $ectype_type, 81, $monster_fieldlevel, 30, $ectype_ID, 57, 68, 10 )
				AddLevelFieldMonster( 51254, 81, $ectype_type, 81, $monster_fieldlevel, 30, $ectype_ID, 67, 54, 10 )
				AddLevelFieldMonster( 51255, 81, $ectype_type, 81, $monster_fieldlevel, 30, $ectype_ID, 75, 59, 10 )
			else
				AddLevelMonster( 51253, 81, $ectype_type, 30, $ectype_ID, 57, 68, 10 )
				AddLevelMonster( 51254, 81, $ectype_type, 30, $ectype_ID, 67, 54, 10 )
				AddLevelMonster( 51255, 81, $ectype_type, 30, $ectype_ID, 75, 59, 10 )
			endif
		else
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51253, 15, $ectype_type, 15, $monster_fieldlevel, 30, $ectype_ID, 57, 68, 10 )
				AddLevelFieldMonster( 51254, 15, $ectype_type, 15, $monster_fieldlevel, 30, $ectype_ID, 67, 54, 10 )
				AddLevelFieldMonster( 51255, 15, $ectype_type, 15, $monster_fieldlevel, 30, $ectype_ID, 75, 59, 10 )
			else
			AddLevelMonster( 51253, 15, $ectype_type, 30, $ectype_ID, 57, 68, 10 )
			AddLevelMonster( 51254, 15, $ectype_type, 30, $ectype_ID, 67, 54, 10 )
			AddLevelMonster( 51255, 15, $ectype_type, 30, $ectype_ID, 75, 59, 10 )
			endif
		endif
//		StartEctypeTimer( $ectype_ID, 1 )
//		StartEctypeTimer( $ectype_ID, 2 )
//		StartEctypeTimer( $ectype_ID, 3 )
//		StartEctypeTimer( $ectype_ID, 4 )
//		StartEctypeTimer( $ectype_ID, 5 )
//		StartEctypeTimer( $ectype_ID, 6 )
		StartEctypeTimer( $ectype_ID, 7 )
//		StartEctypeTimer( $ectype_ID, 8 )
//		StartEctypeTimer( $ectype_ID, 9 )
//		StartEctypeTimer( $ectype_ID, 10 )
		BC( "dialogbox", "map", $ectype_ID, "There are three Dragontongue Books in Dragon Island: the Red, Blue, and Green. Activating them in different orders will awaken different dragons. Gather different color blood from the various dragons to activate the corresponding book." )
				
	}
	
	function EctypeTime2(){
		
		//??????ID
//		$ectype_ID = GetEctypeID( -1 ,187 )
//		SetEctypeVar( -1, 0, 1 )
//		BC( "screen", "map", $ectype_ID, "The Dragontongue Books can be activated now." )
		
	}
	
	function EctypeTime3(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,187 )
		$ectype_var = GetEctypeVar( -1, 118 )
		$ectype_var = $ectype_var + 1
		SetEctypeVar( -1, 118, $ectype_var )
		$var = GetEctypeVar( -1, 118 )
		$var = 6 - $var
		BC( "screen", "map", $ectype_ID, "The Dragontongue Books can be activated in ",$var," min." )
		
	}
	
	function EctypeTime4(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,187 )
		$ectype_var = GetEctypeVar( -1, 118 )
		$ectype_var = $ectype_var + 1
		SetEctypeVar( -1, 118, $ectype_var )
		$var = GetEctypeVar( -1, 118 )
		$var = 6 - $var
//		BC( "screen", "map", $ectype_ID, "The Dragontongue Books can be activated in ",$var," min." )
		SetEctypeVar( -1, 0, 1 )
		BC( "screen", "map", $ectype_ID, "The Dragontongue Books can be activated now." )
		
		$var1 = GetEctypeVar( -1, 1 )
		if $var1 == 1
			$ectype_type = GetEctypeVar( -1, 117 )
			//??????????
			$monster_fieldlevel = GetEctypeVar( -1, 90 )
			//????
			if $monster_fieldlevel > 0
				AddLevelFieldMonster( 51263, 23, $ectype_type, 23, $monster_fieldlevel, 30, $ectype_ID, 54, 51, 10 )
			else
				AddLevelMonster( 51263, 23, $ectype_type, 30, $ectype_ID, 54, 51, 10 )
			endif
			BC( "screen", "map", $ectype_ID, "I admire your strength! Come! Accept a new challenge at the Gate of Slumber!" )
		endif
		
	}
	