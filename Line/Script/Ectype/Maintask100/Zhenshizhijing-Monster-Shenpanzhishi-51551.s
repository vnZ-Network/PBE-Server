	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Shenpanzhishi-Monster-51551.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnDead(){
	
		$hasBuff = IsExistStatus( -1 , 6005 )
		if $hasBuff == 0
			$itemNum = GetPlayerInfo( -1, "item", 12787 )
			if $itemNum < 3
				DropMonsterItems( -1, 51551 )
			endif
			if $itemNum == 3
				$ectype_ID = GetEctypeID( -1 , 253 )
				$switch = GetEctypeVar( $ectype_ID, 37 )
				if $switch == 0
					$posX = GetPlayerInfo( -1, "mapposx" )
					$posY = GetPlayerInfo( -1, "mapposy" )
					PlayEffect( -1, "skill\Monster\yuansuhuan\fire\guanghuan\tx_guanghuan_fire.ini" )
					SetEctypeVar( $ectype_ID, 39, 11 )
					AddMonsterByFloat( 51596, 1, $ectype_ID, $posX, $posY, 0 )
					AddMonsterByFloat( 51595, 1, $ectype_ID, $posX, $posY, 0 )
					PlaySoundToPlayer( -1, "..\Data\Audio\Skill\tx_Common_baozha_01.wav" )
					SetEctypeVar( $ectype_ID, 37, 1 )
				else
					DropMonsterItems( -1, 51551 )
				endif
			endif
			if $itemNum == 4
				DropMonsterItems( -1, 51551 )
			endif
			if $itemNum == 5
				BC( "screen", "player", -1, "You have collected 5 Stones of Judgement" )
				return
			endif
		else
			BC( "screen", "player", -1, "Only the person who gains power from Shattered Mirror of Reality can move Stone of Judgement." )
		endif
		
	
	}