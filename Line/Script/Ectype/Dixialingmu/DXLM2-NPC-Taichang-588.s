	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479????NPC????
	//		TaskID:DXLM2-NPC-Taichang-588.s
	//
	//****************************************
	
	function OnRequest(){
	
		//????????????
		$is = GetEctypeVar(-1, 24)
		if $is != 0
			DisableNpcOption(0)
		endif
		
		$is = GetEctypeVar(-1, 24)
		if $is == 2
			DisableNpcOption(1)
		endif
			
	}
	
	function OnOption0(){
		
		//??????????,????,???????
		$Ectype_ID = GetEctypeID(-1, 479)		
		$headerID = GetTeamHeaderID( -1 )
		$playerid = GetPlayerID()
//			if $playerid != $headerID
//				BC( "dialogbox", "player", -1, "GUID:04042000000" )
//				return
//			endif
	
//		$size = GetTeamAreaSize(-1)
//			if $size > 10
//				BC( "dialogbox", "player", -1, "GUID:04042000001" )
//				return
//			endif
		
		//??60???
		//	AddMonsterByFloat( 51787, 5, -1, 3??X??, 3??Y??, 5)
		$is = GetEctypeVar(-1, 24)
		if $is != 0
			return
		endif
		
		StartEctypeTimer(-1 , 3 )	
		BC( "screen", "map", $Ectype_ID, "Midway army Mountain Stompers will appear soon. Go battle them.")
		
		//??????,??????
		SetEctypeVar(-1, 24, 1)	
	
	}

	function OnOption1(){

	$Ectype_ID = GetEctypeID(-1, 479)		
	//??????????32?		
	$is = GetEctypeVar(-1, 24)
		if $is == 0
			BC( "dialogbox", "player", -1, "It is dangerous to meet the enemy at the back. Please kill the first group of the army first." )
			BC( "chat", "map", $Ectype_ID, "It is dangerous to meet the enemy at the back. Please kill the first group of the army first." )
			return
		endif
		
		if $is == 1			
			$n = GetEctypeVar(-1, 27)
			if $n < 32
				$a = 32 - $n
				BC( "dialogbox", "player", -1, "It is dangerous to meet the enemy at the back. Please kill the first group of the army first." , $a , "Mountain Stomper" )
				BC( "chat", "map", $Ectype_ID, "It is dangerous to meet the enemy at the back. Please kill the first group of the army first." , $a , "Mountain Stomper" )
				return
			endif
		endif
		
		$is = GetEctypeVar(-1, 24)
		if $is == 2
			BC( "dialogbox", "player", -1, "The enemy is in front of us. Finish them!" )
			BC( "chat", "map", $Ectype_ID, "The enemy is in front of us. Finish them!" )
			return
		endif
		
		BC( "screen", "map", $Ectype_ID, "Midway army Mountain Stompers will appear soon.")
		StartEctypeTimer(-1 , 4 )
		SetEctypeVar(-1, 24, 2)
		
	}

	function OnOption2(){
	
		$Ectype_ID = GetEctypeID(-1, 479)
		//??????????,????,???????	
		$headerID = GetTeamHeaderID( -1 )
		$playerid = GetPlayerID()
//			if $playerid != $headerID
//				BC( "dialogbox", "player", -1, "GUID:04042000012" )
//				return
//			endif
//				
		//????????	
		$is_kill = GetEctypeVar(-1, 30)
		if $is_kill != 2
			BC( "dialogbox", "player", -1, "The death Gate which leads to the South is protected by Undead Oni. Through the north cave, kill the Oni to remove the protection." )
			BC( "screen", "map", $Ectype_ID, "The death Gate which leads to the South is protected by Undead Oni. Through the north cave, kill the Oni to remove the protection." )
			BC( "chat", "team", -1, "The death Gate which leads to the South is protected by Undead Oni. Through the north cave, kill the Oni to remove the protection." )
			return
		endif
		
		$is5added = GetEctypeVar(-1, 52)
		if $is_kill == 1
			BC(	"dialogbox","player",$id,"The door is open. Kill the Absolute Cold General Flame Rider.")
			BC( "chat", "team", -1, "The door is open. Kill the Absolute Cold General Flame Rider." )
			return
		endif
		
//??6??,??????2?BOSS		
		OpenMask(6,$Ectype_ID)
//		$mon_ID = AddMonsterByFloat( 51798, 1, $Ectype_ID, 35, 129 ,1)
		$mon_ID = AddSingleMonster(51798,$Ectype_ID,14,50,0)
		SetEctypeVar(-1, 118, $mon_ID)
//		$mon_ID = AddMonsterByFloat( 51799, 1, $Ectype_ID, 21, 129 ,1)
		$mon_ID = AddSingleMonster(51799,$Ectype_ID,8,50,0)
		SetEctypeVar(-1, 119, $mon_ID)
		
		SetEctypeVar(-1, 52, 1)
		
		BC( "screen", "map", $Ectype_ID, "The death Gate which leads to the South is protected by Undead Oni. The battle is going to begin." )
		BC( "chat", "team", -1, "The death Gate which leads to the South is protected by Undead Oni. The battle is going to begin." )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			
	}