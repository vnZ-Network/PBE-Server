	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/23
	//		Author:???
	//		TaskName:Item-12824.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		$Item = 12824
		
		$a = IsTaskAccept( -1, 298 )
		if  $a != 0
			 BC( "chat", "player", -1, "You don't have the Glory of the Creator quest. " )
			return
		endif	
		
		$level = GetPlayerInfo( -1, "level" )	
		if $level < 120
			BC( "chat", "player", -1, "You are not yet LV120." )
			return
		endif		

		$Title = HaveTitle( -1, 81 )		
		if $Title != 0		
			$Title_info = AddTitle( -1, 81 )
			BC( "chat", "player", -1, "Congratulations! You became a Creator!" )
		endif
		
		$fieldlevel = GetFieldLevel( -1 )	
		if $fieldlevel > 0
			BC( "chat", "player", -1, "You have activated Exalted. " )
			return
		endif	
		
		//???????
		$iteminfo = GetPlayerInfo( -1 , "item", 12825 )
		if $iteminfo < 1
			//????????
			$info = SubPlayerInfo( -1, "item", $Item, 1 )
			if $info != 0
				return
			endif
			$result = AddPlayerInfo( -1, "item", 12825, 1 )
		else
			BC( "chat", "player", -1, "You already have Glory of the Creator. " )
		endif	
		
		
		
		
//		//??????????1?
//		$result = SetFieldLevel(-1, 1)	
//		BC( "chat", "player", -1, "GUID:06194000005" )
//		PlayEffect(-1,"common\shanguangzhadan\fire\tx_shanguangzhadan_fire.ini", 0)
//		PlayEffect(-1,"common\shengji\tx_shengji_fire.ini", 0)
//		PlayEffect(-1,"common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0)
		
		}