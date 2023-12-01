  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/15
	//		Author: ???
	//		TaskName:Ectype-shiluoyiji-Monster-55200.s
	//		TaskID:   ???????????
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID( -1 , 237 )
		$monster_count = GetEctypeVar( -1 , 112 )
		$monster_count = $monster_count + 1
		SetEctypeVar( -1 , 112 , $monster_count )
		$monster_level = GetEctypeVar( -1 , 110 )
		$monster_fieldlevel = GetEctypeVar( -1 , 90 )

		if $monster_fieldlevel > 0	
		//------??2??16?----------------
				if $monster_count == 12
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 67 , 58 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 5 , $ectype_id , 65 , 60 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 5 , $ectype_id , 67 , 63 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 2nd wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 2nd wave of Quetzalcoatl's Guard is coming." )
				endif
		//-------??3??17?---------------------------
				if $monster_count == 28
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 67 , 67 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 63 , 66 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 5 , $ectype_id , 63 , 70 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 3rd wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 3rd wave of Quetzalcoatl's Guard is coming." )
				endif
		//-------??4??18?----------------------------
				if $monster_count == 45
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 58 , 70 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 55 , 68 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 57 , 64 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 4th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 4th wave of Quetzalcoatl's Guard is coming." )
				endif
		//---------??5??19?-----------------------------
				if $monster_count == 63
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 57 , 60 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 60 , 61 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 63 , 57 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 5th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 5th wave of Quetzalcoatl's Guard is coming." )
				endif
		//---------??6??20?-----------------
				if $monster_count == 82
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 6 , $ectype_id , 67 , 58 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 65 , 60 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 67 , 63 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 6th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 6th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-------??7??21?-------------------------
				if $monster_count == 102
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 67 , 67 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 63 , 66 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 63 , 70 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 7th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 7th wave of Quetzalcoatl's Guard is coming." )
				endif
		//----------??8??22?-----------------------
				if $monster_count == 123
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 58 , 70 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 55 , 68 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 57 , 64 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 8th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 8th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-----------??9??23?----------------------
				if $monster_count == 145
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 7 , $ectype_id , 57 , 60 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 60 , 61 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 63 , 57 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 9th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 9th wave of Quetzalcoatl's Guard is coming." )
				endif
		//---------??10??24?-----------------------
				if $monster_count == 168
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 67 , 58 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 65 , 60 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 67 , 63 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 10th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 10th wave of Quetzalcoatl's Guard is coming." )
				endif
		//---------------??11??25?-------------
				if $monster_count == 192
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 67 , 67 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 63 , 66 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 63 , 70 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 11th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 11th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-------------??12??26?------------------
				if $monster_count == 217
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 8 , $ectype_id , 58 , 70 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 55 , 68 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 57 , 64 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 12th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 12th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-----------??13??27?--------------------
				if $monster_count == 243
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 57 , 60 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 60 , 61 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 63 , 57 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 13th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 13th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-----------??14??28?--------------------
				if $monster_count == 270
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 67 , 58 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 65 , 60 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 10 , $ectype_id , 67 , 63 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 14th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 14th wave of Quetzalcoatl's Guard is coming." )
				endif
		//----------??15??29?--------------------------
				if $monster_count == 298
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 9 , $ectype_id , 67 , 67 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 10 , $ectype_id , 63 , 66 , 1 )
					AddLevelFieldMonster( 55200 , 48 , $monster_level ,48 , $monster_fieldlevel , 10 , $ectype_id , 63 , 70 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 15th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 15th wave of Quetzalcoatl's Guard is coming." )
				endif
		
		
		else
		
		//------??2??16?----------------
				if $monster_count == 12
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 67 , 58 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 5 , $ectype_id , 65 , 60 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 5 , $ectype_id , 67 , 63 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 2nd wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 2nd wave of Quetzalcoatl's Guard is coming." )
				endif
		//-------??3??17?---------------------------
				if $monster_count == 28
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 67 , 67 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 63 , 66 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 5 , $ectype_id , 63 , 70 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 3rd wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 3rd wave of Quetzalcoatl's Guard is coming." )
				endif
		//-------??4??18?----------------------------
				if $monster_count == 45
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 58 , 70 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 55 , 68 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 57 , 64 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 4th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 4th wave of Quetzalcoatl's Guard is coming." )
				endif
		//---------??5??19?-----------------------------
				if $monster_count == 63
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 57 , 60 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 60 , 61 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 63 , 57 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 5th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 5th wave of Quetzalcoatl's Guard is coming." )
				endif
		//---------??6??20?-----------------
				if $monster_count == 82
					AddLevelMonster( 55200 , 48 , $monster_level , 6 , $ectype_id , 67 , 58 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 65 , 60 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 67 , 63 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 6th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 6th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-------??7??21?-------------------------
				if $monster_count == 102
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 67 , 67 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 63 , 66 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 63 , 70 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 7th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 7th wave of Quetzalcoatl's Guard is coming." )
				endif
		//----------??8??22?-----------------------
				if $monster_count == 123
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 58 , 70 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 55 , 68 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 57 , 64 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 8th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 8th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-----------??9??23?----------------------
				if $monster_count == 145
					AddLevelMonster( 55200 , 48 , $monster_level , 7 , $ectype_id , 57 , 60 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 60 , 61 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 63 , 57 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 9th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 9th wave of Quetzalcoatl's Guard is coming." )
				endif
		//---------??10??24?-----------------------
				if $monster_count == 168
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 67 , 58 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 65 , 60 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 67 , 63 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 10th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 10th wave of Quetzalcoatl's Guard is coming." )
				endif
		//---------------??11??25?-------------
				if $monster_count == 192
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 67 , 67 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 63 , 66 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 63 , 70 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 11th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 11th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-------------??12??26?------------------
				if $monster_count == 217
					AddLevelMonster( 55200 , 48 , $monster_level , 8 , $ectype_id , 58 , 70 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 55 , 68 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 57 , 64 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 12th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 12th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-----------??13??27?--------------------
				if $monster_count == 243
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 57 , 60 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 60 , 61 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 63 , 57 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 13th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 13th wave of Quetzalcoatl's Guard is coming." )
				endif
		//-----------??14??28?--------------------
				if $monster_count == 270
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 67 , 58 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 65 , 60 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 10 , $ectype_id , 67 , 63 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 14th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 14th wave of Quetzalcoatl's Guard is coming." )
				endif
		//----------??15??29?--------------------------
				if $monster_count == 298
					AddLevelMonster( 55200 , 48 , $monster_level , 9 , $ectype_id , 67 , 67 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 10 , $ectype_id , 63 , 66 , 1 )
					AddLevelMonster( 55200 , 48 , $monster_level , 10 , $ectype_id , 63 , 70 , 1 )
					BC( "screen" , "map" , $ectype_id , "The 15th wave of Quetzalcoatl's Guard is coming." )
					BC( "chat" , "map" , $ectype_id , "The 15th wave of Quetzalcoatl's Guard is coming." )
				endif
		endif




//------------?BOSS--------------------
		if $monster_count == 327
			BC( "screen" , "map" , $ectype_id , "The monsters in the ruins have all been wiped out. Please report to the Jungle Defender, and he will guide you to Quetzalcoatl." )
			BC( "chat" , "map" , $ectype_id , "The monsters in the ruins have all been wiped out. Please report to the Jungle Defender, and he will guide you to Quetzalcoatl." )
		endif
	}
		
	
	

		