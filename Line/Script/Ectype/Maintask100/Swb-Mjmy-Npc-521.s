
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/3
	//		Author:???
	//		TaskName:Swb-Mjmy-Npc-521.s
	//		TaskID:  ??8
	//****************************************
	

	function OnRequest(){
		
		$Accept = IsTaskAccept( -1 , 209 )
		if $Accept != 0
			DisableNpcOption(0)
		endif
		$Accept = IsTaskAccept( -1 , 212 )
		if $Accept != 0
			DisableNpcOption(1)
		endif
	
	}
	
	function OnOption0(){
		
		$Accept = IsTaskAccept( -1 , 209 )
		if $Accept != 0
			return
		endif
		
		$ectype_id = GetEctypeID( -1 , 254 )
		$a = GetEctypeVar( $ectype_id , 7 )
		$round = GetEctypeVar($ectype_id , 9 )
		$round = $round + 1
		if $a != $round
			if $a < $round
				BC( "screen" , "player" , -1 , "Pillar of Nightmare is unlocked successfully" )
				BC( "chat" , "player" , -1 , "Pillar of Nightmare is unlocked successfully" )
				return
			else
				BC( "screen" , "player" , -1 , "Pillar of Nightmare can't be unlocked in the wrong order" )
				BC( "chat" , "player" , -1 , "Pillar of Nightmare can't be unlocked in the wrong order" )
				return
			endif
		else
			if $a < 8
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
				ChangeNpcMode( -1 , $ectype_id , 521 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
				AddMonsterByFloat( 51508 , 1 , $ectype_id , 186 , 104 , 0 )
				SetEctypeVar($ectype_id , 9 , $round )
				BC( "screen" , "player" , -1 , "Pillar of Nightmare is activated and shines" )
				BC( "chat" , "player" , -1 , "Pillar of Nightmare is activated and shines" )
				return
			endif
			if $a == 8
				PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
				ChangeNpcMode( -1 , $ectype_id , 521 , ..\Data\Character\Npc\maintask\mirror\shizhulazhu_1\shizhulazhu_1.pwm3 , "b" )
				AddMonsterByFloat( 51510 , 1 , $ectype_id , 199 , 99 , 0 )
				AddMonsterByFloat( 51508 , 1 , $ectype_id , 186 , 104 , 0 )
				StartEctypeTimer ( $ectype_id , 2 )
				SetEctypeVar($ectype_id , 9 , $round )
				BC( "screen" , "player" , -1 , "All Pillars of Nightmare are activated" )
				BC( "chat" , "player" , -1 , "All Pillars of Nightmare are activated" )
				return
			endif
		endif
		
	}
		
	function OnOption1(){
		
		$Accept = IsTaskAccept( -1 , 212 )
		if $Accept != 0
			return
		endif
		
		$ectype_id = GetEctypeID( -1 , 254 )
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		$info = GetPlayerInfo( -1, "item", 12786 )
		if $info < 1
			BC( "screen", "player", -1, "Can't copy without blank Parchment. Please go to Maldy and request a new one." )
			return
		endif
		$info = GetPlayerInfo( -1, "item", 12785 )
		if $info > 0
			BC( "screen", "player", -1, "You have got Inscription of Nightmare" )
			return
		endif
		$a = GetEctypeVar( $ectype_id , 28  )
		if $a == 8 
			
			$info = SubPlayerInfo ( -1 , "item" , 12786 , 1 )
			if $info != 0
				return
			endif
			AddPlayerInfo( -1 , "item" , 12785 , 1 )
			BC( "screen" , "player" , -1 , "You have copied Inscription of Nightmare successfully" )
			BC( "chat" , "player" , -1 , "You have copied Inscription of Nightmare successfully" )
		
		else
			$info = SubPlayerInfo ( -1 , "item" , 12786 , 1 )
			if $info != 0
				return
			endif
			BC( "screen" , "player" , -1 , "Failed to copy Inscription of Nightmare. Please go back to Maldy and get a new Parchment" )
			BC( "chat" , "player" , -1 , "Failed to copy Inscription of Nightmare. Please go back to Maldy and get a new Parchment" )
		
		endif
	}