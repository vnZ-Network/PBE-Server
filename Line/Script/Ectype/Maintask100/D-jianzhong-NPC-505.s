	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-505.s
	//		TaskID: ?? 
	//
	//****************************************
	
	//47 	?????????
	//48 	?????????
	//49 	?????????
	//50 	?????????
	//51 	??????????
	
	
	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 231 )
		
		if $Accept != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif
		
		//????????
//		$team_headerID = GetTeamHeaderID(-1)
//		$player_id = GetPlayerID()		
//		
//		if $player_id != $team_headerID
//			DisableNpcOption(0)
//			DisableNpcOption(1)
//			DisableNpcOption(2)
//			DisableNpcOption(3)
//			DisableNpcOption(4)
//		endif

		//5???????
		$Info0 = GetPlayerVar( -1 , 47 )
		$Info1 = GetPlayerVar( -1 , 48 )
		$Info2 = GetPlayerVar( -1 , 49 )
		$Info3 = GetPlayerVar( -1 , 50 )
		$Info4 = GetPlayerVar( -1 , 51 )
		
		//???????????,????????
		if $Info0 == 1
			DisableNpcOption(0)
		endif
		
		if $Info1 == 1
			DisableNpcOption(1)
		endif
		
		if $Info2 == 1
			DisableNpcOption(2)
		endif
		
		if $Info3 == 1
			DisableNpcOption(3)
		endif
		
		if $Info4 == 1
			DisableNpcOption(4)
		endif
			
	}
	
	function OnOption0(){
	
		//?????????12756
		$item = GetPlayerInfo( -1, "item", 12756 )
		if $item == 0
			BC( "dialogbox", "player", -1, "Unable to charge water Magic Spirit!" )
			return
		endif
		
		$sub = SubPlayerInfo(-1,"item",12756,1)
		if $sub == 0
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			$ectype_ID = GetEctypeID( -1, 255 )
			SetEctypeVar( $ectype_ID , 39 , 74 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 115, 0 )
			$ectype_ID = GetEctypeID( -1, 255 )
			SetEctypeVar( $ectype_ID , 39 , 74 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 115, 0 )
			BC( "screen", "player", -1, "Charging for water Magic Spirit succeeded!" )
			SetPlayerVar( -1 , 47 , 1 )
		endif
		
		//5???????
		$Info0 = GetPlayerVar( -1 , 47 )
		$Info1 = GetPlayerVar( -1 , 48 )
		$Info2 = GetPlayerVar( -1 , 49 )
		$Info3 = GetPlayerVar( -1 , 50 )
		$Info4 = GetPlayerVar( -1 , 51 )
		
		if $Info0 != 1
			return
		endif
		
		if $Info1 != 1
			return
		endif
		
		if $Info2 != 1
			return
		endif
		
		if $Info3 != 1
			return
		endif
		
		if $Info4 != 1
			return
		endif
		

		call LocalDone()
					
	}
	
	function OnOption1(){
	
		//?????????12757
		$item = GetPlayerInfo( -1, "item", 12757 )
		if $item == 0
			BC( "dialogbox", "player", -1, "Unable to charge fire Magic Spirit!" )
			return
		endif
		
		$sub = SubPlayerInfo(-1,"item",12757,1)
		if $sub == 0
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			$ectype_ID = GetEctypeID( -1, 255 )
			SetEctypeVar( $ectype_ID , 39 , 79 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 115, 0 )
			BC( "screen", "player", -1, "Charging for fire Magic Spirit succeeded!" )
			SetPlayerVar( -1 , 48 , 1 )
		endif
		
		//5???????
		$Info0 = GetPlayerVar( -1 , 47 )
		$Info1 = GetPlayerVar( -1 , 48 )
		$Info2 = GetPlayerVar( -1 , 49 )
		$Info3 = GetPlayerVar( -1 , 50 )
		$Info4 = GetPlayerVar( -1 , 51 )
		
		if $Info0 != 1
			return
		endif
		
		if $Info1 != 1
			return
		endif
		
		if $Info2 != 1
			return
		endif
		
		if $Info3 != 1
			return
		endif
		
		if $Info4 != 1
			return
		endif
		

		call LocalDone()
			
	}	
	
	function OnOption2(){
	
		//?????????12758
		$item = GetPlayerInfo( -1, "item", 12758 )
		if $item == 0
			BC( "dialogbox", "player", -1, "Unable to charge light Magic Spirit!" )
			return
		endif
		
		$sub = SubPlayerInfo(-1,"item",12758,1)
		if $sub == 0
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			$ectype_ID = GetEctypeID( -1, 255 )
			SetEctypeVar( $ectype_ID , 39 , 77 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 115, 0 )
			BC( "screen", "player", -1, "Charging for light Magic Spirit succeeded!" )
			SetPlayerVar( -1 , 49 , 1 )
		endif
		
		//5???????
		$Info0 = GetPlayerVar( -1 , 47 )
		$Info1 = GetPlayerVar( -1 , 48 )
		$Info2 = GetPlayerVar( -1 , 49 )
		$Info3 = GetPlayerVar( -1 , 50 )
		$Info4 = GetPlayerVar( -1 , 51 )
		
		if $Info0 != 1
			return
		endif
		
		if $Info1 != 1
			return
		endif
		
		if $Info2 != 1
			return
		endif
		
		if $Info3 != 1
			return
		endif
		
		if $Info4 != 1
			return
		endif
		

		call LocalDone()
		
	}
	
	function OnOption3(){
	
		//?????????12759
		$item = GetPlayerInfo( -1, "item", 12759 )
		if $item == 0
			BC( "dialogbox", "player", -1, "Unable to charge dark Magic Spirit!" )
			return
		endif
		
		$sub = SubPlayerInfo(-1, "item" , 12759 , 1 )
		if $sub == 0
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			$ectype_ID = GetEctypeID( -1, 255 )
			SetEctypeVar( $ectype_ID , 39 , 27 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 115, 0 )
			BC( "screen", "player", -1, "Charging for dark Magic Spirit succeeded!" )
			SetPlayerVar( -1 , 50 , 1 )
		endif
		
		//5???????
		$Info0 = GetPlayerVar( -1 , 47 )
		$Info1 = GetPlayerVar( -1 , 48 )
		$Info2 = GetPlayerVar( -1 , 49 )
		$Info3 = GetPlayerVar( -1 , 50 )
		$Info4 = GetPlayerVar( -1 , 51 )
		
		if $Info0 != 1
			return
		endif
		
		if $Info1 != 1
			return
		endif
		
		if $Info2 != 1
			return
		endif
		
		if $Info3 != 1
			return
		endif
		
		if $Info4 != 1
			return
		endif
		
		
		call LocalDone()
				
	}
	
	function OnOption4(){
	
		//???????1
//		$hp = GetPlayerInfo( -1, "hp" )
//		if $hp < 2
//			BC( "dialogbox", "player", -1, "GUID:04463000008" )
//			return
//		endif
		
//		$subhp = $hp - 1
//		$suninfo = SubPlayerInfo(-1, "hp" , $subhp )
//		if $suninfo == 0
//			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
//			$ectype_ID = GetEctypeID( -1, 255 )
//			SetEctypeVar( $ectype_ID , 39 , 78 )
//			AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 115, 0 )
//			BC( "screen", "player", -1, "Charging for soul Magic Spirit succeeded!" )
//			BC( "screen", "player", -1, "GUID:04463000010" )
//			BC( "chat", "player", -1, "GUID:04463000011" )
//			SetPlayerVar( -1 , 51 , 1 )
//		endif
		
		AddStatus( -1, 10204, 1 )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		$ectype_ID = GetEctypeID( -1, 255 )
		SetEctypeVar( $ectype_ID , 39 , 78 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 95, 115, 0 )
		BC( "screen", "player", -1, "Charging for soul Magic Spirit succeeded!" )
//		BC( "screen", "player", -1, "GUID:04463000013" )
//		BC( "chat", "player", -1, "GUID:04463000014" )
		SetPlayerVar( -1 , 51 , 1 )
		
		//5???????
		$Info0 = GetPlayerVar( -1 , 47 )
		$Info1 = GetPlayerVar( -1 , 48 )
		$Info2 = GetPlayerVar( -1 , 49 )
		$Info3 = GetPlayerVar( -1 , 50 )
		$Info4 = GetPlayerVar( -1 , 51 )
		
		if $Info0 != 1
			return
		endif
		
		if $Info1 != 1
			return
		endif
		
		if $Info2 != 1
			return
		endif
		
		if $Info3 != 1
			return
		endif
		
		if $Info4 != 1
			return
		endif
		
		
		call LocalDone()
			
	}
	
	function LocalDone(){
		
		
		$taskinfo = IsTaskDone( -1 , 231 )
		if $taskinfo > 0
			$add_exp = 12000000
			$add_money = 150000
			
			//????
			AddPlayerInfo( -1, "exp", $add_exp )
			AddPlayerInfo( -1, "money", $add_money )
			AddPlayerInfo( -1, "item", 59223, 1 )
			SetTaskDone( -1 , 231 )
		endif
		
		//??????
		BC( "screen" , "player" , -1 , "Quest completed, received new quest!" )
		AcceptTask( -1 , 232 )
		
		//?????????3
		$ectype_ID = GetEctypeID( -1, 255 )
		OpenMask( 3, $ectype_ID )
		OpenMask( 5, $ectype_ID )
		
	}