
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/13
	//		Author:???(??,??,??)
	//		TaskName:???479NPC??680
	//		TaskID:DXLM-CSNPC-Feier-680.s
	//
	//****************************************

	function OnRequest(){
		
	}	
	
	function OnOption0(){
		
		
			$ectype_id = GetEctypeID(-1, 478)
			$team = IsPlayerInTeam(-1)
			$headerID = GetTeamHeaderID( -1 )
			$playerid = GetPlayerID()
			
			$choice = GetEctypeVar($ectype_id,0)
			if $choice != 0
				if $choice != 1
					BC( "dialogbox", "player", -1, "I am looking for the destined people." )
					return
				endif
			endif
			
			if $playerid != $headerID
				BC( "screen", "player", -1, "You are not the Party Leader." )
				return
			endif
			$size = GetTeamAreaSize(-1)
			if $size > 6
				BC( "screen", "player", -1, "Your party member is too far away." )
				return
			endif
//----------??-------------------------------
			$Mem1 = GetTeamMemberID( -1, 0 )
			$Mem2 = GetTeamMemberID( -1, 1 )
			$Mem3 = GetTeamMemberID( -1, 2 )
			$Mem4 = GetTeamMemberID( -1, 3 )
			$Mem5 = GetTeamMemberID( -1, 4 )
			$Mem6 = GetTeamMemberID( -1, 5 )
//-------??479----start----------------------------
			$succeed = FlyToEctype( $headerID , 479 ,119 ,76 )
			if $succeed > 0
				$ectype_idn = GetEctypeID($headerID , 479 )
				$ectype_uid = GetEctypeUniqueID($headerID , 479 )
				SetPlayerVar( -1 , 3853 , $ectype_uid )
				BC( "screen" , "player" , $headerID , "You entered Pangaea's Catacomb (Ethereal)!" )
				SetEctypeVar( $ectype_idn , 111 , $Mem1 )
				SetEctypeVar( $ectype_idn , 112 , $Mem2 )
				SetEctypeVar( $ectype_idn , 113 , $Mem3 )
				SetEctypeVar( $ectype_idn , 114 , $Mem4 )
				SetEctypeVar( $ectype_idn , 115 , $Mem5 )
				SetEctypeVar( $ectype_idn , 116 , $Mem6 )
				SetEctypeVar($ectype_idn,0,3)
				SetEctypeVar($ectype_id,0,3)


				StartEctypeTimer($headerID, 479 , 1 )
			else
				BC( "dialogbox", "player", -1, "Too many players in this instance now. Please try again later or change realms!" )
				return
			endif
			if $Mem1 != -1
				if $Mem1 != $headerID
					$succeed = FlyToEctype( $Mem1 , 479 ,119 ,76 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem1 , 479 )
						SetPlayerVar( $Mem1 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem1 , "You entered Pangaea's Catacomb (Ethereal)!" )
					else
						BC( "dialogbox", "player", $Mem1 , "Unknown error, error code:" , $succeed )
					endif
				endif
			endif
			if $Mem2 != -1
				if $Mem2 != $headerID
					$succeed = FlyToEctype( $Mem2 , 479 ,119 ,76 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem2 , 479 )
						SetPlayerVar( $Mem2 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem2 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem2 , "Unknown error, error code:" , $succeed )
					endif
				endif
			endif
			if $Mem3 != -1
				if $Mem3 != $headerID
					$succeed = FlyToEctype( $Mem3 , 479 ,119 ,76 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem3 , 479 )
						SetPlayerVar( $Mem3 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem3 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem3 , "Unknown error, error code:" , $succeed )
					endif
				endif
			endif
			if $Mem4 != -1
				if $Mem4 != $headerID
					$succeed = FlyToEctype( $Mem4 , 479 ,119 ,76 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem4 , 479 )
						SetPlayerVar( $Mem4 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem4 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem4 , "Unknown error, error code:" , $succeed )
					endif
				endif
			endif
			if $Mem5 != -1
				if $Mem5 != $headerID
					$succeed = FlyToEctype( $Mem5 , 479 ,119 ,76 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem5 , 479 )
						SetPlayerVar( $Mem5 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem5 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem5 , "Unknown error, error code:" , $succeed )
					endif
				endif
			endif
			if $Mem6 != -1
				if $Mem6 != $headerID
					$succeed = FlyToEctype( $Mem6 , 479 ,119 ,76 )
					if $succeed > 0
						$ectype_uid = GetEctypeUniqueID( $Mem6 , 479 )
						SetPlayerVar( $Mem6 , 3853 , $ectype_uid )
						BC( "screen", "player", $Mem6 , "You entered Pangaea's Catacomb (Ethereal)!" )

					else
						BC( "dialogbox", "player", $Mem6 , "Unknown error, error code:" , $succeed )
					endif
				endif
			endif
//----------------------????------------------
			ReleaseEctype($headerID , 478 )
			}
			
			
	function OnOption1(){
		
		BC( "dialogbox", "player", -1 , "Scenario Option:\n\n1.Only the {#fff00000=Party leader#} can choose.\n2.After choosing, you {#fff00000=cannot choose any other scenario#}" )

	}