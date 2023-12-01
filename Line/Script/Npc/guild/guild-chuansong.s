	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/03/24
	//		Author:??
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	//??1?? ?????????
	
function OnRequest(){
	
	//????????????????
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)
	
	//??????????
	if $Lingdi == -1
		DisableNpcOption(0)
		DisableNpcOption(4)
		DisableNpcOption(5)
		DisableNpcOption(6)
		DisableNpcOption(7)
	else
		DisableNpcOption(1)
		DisableNpcOption(2)
		DisableNpcOption(3)
	endif	

}

function OnOption0(){
	
	//????????
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)
	$Bianhao = GetGuildEctypeID($Guildid)
	
	//????????
	if $Guildid == -1
		BC( "dialogbox", "player", -1, "Your Guild does not have a Guild Territory." )
		return
	endif
	
	//??????????????
	if $Bianhao > 0
		FlyToMap( -1 , $Bianhao , 63 , 88 )
	else
	//???????,???????
		$result = CreateGuildZoneEctype($Guildid)
		if $result > 0
			FlyToMap( -1 , $result , 63 , 88 )
		endif	
	endif	
}	

function OnOption1(){
	
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)	
	$item = GetPlayerInfo( -1 , "item" , 4043 )
	$nullitem = GetPlayerInfo( -1 , "nullitem" ,0 )
	
	//??????????
	if $Lingdi != -1
		BC( "dialogbox", "player", -1, "Your Guild does not have a Guild Territory, so does not need a Hephaestus' Light." )
		return
	endif
	
	if $nullitem < 1
		BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	
	if $item < 200
		BC( "dialogbox", "player", -1, "You must have at least 200 Silver Chunks to exchange for a Hephaestus' Light." )	
		return
	endif
	
	$result = SubPlayerInfo( -1 ,"item" , 4043 , 200)
	
	if $result == 0
		AddPlayerInfo(-1 , "item" , 59786 , 1)
		BC( "dialogbox", "player", -1, "Successfully exchanged for a Hephaestus' Light." )	
	endif
	
}		

function OnOption2(){
	
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)	
	$item = GetPlayerInfo( -1 , "item" , 4053 )
	$nullitem = GetPlayerInfo( -1 , "nullitem" ,0 )
	
	//??????????
	if $Lingdi != -1
		BC( "dialogbox", "player", -1, "Your Guild does not have a Guild Territory, so does not need a Hephaestus' Light." )
		return
	endif
	
	if $nullitem < 1
		BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	
	if $item < 200
		BC( "dialogbox", "player", -1, "You must have at least 200 Violet Lotus Buds to exchange for a Hephaestus' Light." )	
		return
	endif
	
	$result = SubPlayerInfo( -1 ,"item" , 4053 , 200)
	
	if $result == 0
		AddPlayerInfo(-1 , "item" , 59786 , 1)
		BC( "dialogbox", "player", -1, "Successfully exchanged for a Hephaestus' Light." )	
	endif
	
}

function OnOption3(){
	
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)	
	$item = GetPlayerInfo( -1 , "item" , 4063 )
	$nullitem = GetPlayerInfo( -1 , "nullitem" ,0 )
	
	//??????????
	if $Lingdi != -1
		BC( "dialogbox", "player", -1, "Your Guild does not have a Guild Territory, so does not need a Hephaestus' Light." )
		return
	endif
	
	if $nullitem < 1
		BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	
	if $item < 200
		BC( "dialogbox", "player", -1, "You must have at least 200 Aquamarine Beads to exchange for a Hephaestus' Light." )	
		return
	endif
	
	$result = SubPlayerInfo( -1 ,"item" , 4063 , 200)
	
	if $result == 0
		AddPlayerInfo(-1 , "item" , 59786 , 1)
		BC( "dialogbox", "player", -1, "Successfully exchanged for a Hephaestus' Light." )	
	endif
	
}

function OnOption4(){
	
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)	
	//????
	$item1 = GetPlayerInfo( -1 , "item" , 59122 )
	//???
	$item2 = GetPlayerInfo( -1 , "item" , 59164 )
	//??
	$item = $item1 + $item2
	$nullitem = GetPlayerInfo( -1 , "nullitem" ,0 )
	
	//??????????
	if $Lingdi == -1
		BC( "dialogbox", "player", -1, "Your Guild does not have a Guild Territory, so does not need Advanced Construction Materials." )
		return
	endif
	//????
	if $nullitem < 1
		BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	//????
	if $item < 200
		BC( "dialogbox", "player", -1, "You must have at least 200 Holy Water to exchange for Advanced Construction Material." )	
		return
	endif
	
	//?????
	
	if $item2 >= 200
		$result1 = SubPlayerInfo( -1 ,"item" , 59164 , 200)
		if $result1 == 0
			AddPlayerInfo(-1 , "item" , 59788 , 1)
			BC( "dialogbox", "player", -1, "Successfully exchanged for Advanced Construction Materials." )
		endif
	else
		
		$result2 = SubPlayerInfo( -1 ,"item" , 59164 , $item2)
		$temp_item = 200 - $item2
		$result3 = SubPlayerInfo( -1 ,"item" , 59122 , $temp_item)
		if $result3 == 0
			AddPlayerInfo(-1 , "item" , 59788 , 1)
			BC( "dialogbox", "player", -1, "Successfully exchanged for Advanced Construction Materials." )
		endif			
	endif										
}

function OnOption5(){
	
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)	
	$item = GetPlayerInfo( -1 , "item" , 63691 )
	$nullitem = GetPlayerInfo( -1 , "nullitem" ,0 )
	
	//??????????
	if $Lingdi == -1
		BC( "dialogbox", "player", -1, "Your Guild does not have a Guild Territory, so does not need Advanced Construction Materials." )
		return
	endif
	//????
	if $nullitem < 1
		BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	//????
	if $item < 200
		BC( "dialogbox", "player", -1, "You must have at least 200 Aura of Souljades to exchange for Advanced Construction Material." )	
		return
	endif
	//???
	$result = SubPlayerInfo( -1 ,"item" , 63691 , 200)
	//???????
	if $result == 0
		AddPlayerInfo(-1 , "item" , 59788 , 1)
		BC( "dialogbox", "player", -1, "Successfully exchanged for Advanced Construction Materials." )	
	endif
						
}

function OnOption6(){
	
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)	
	//????
	$item1 = GetPlayerInfo( -1 , "item" , 1 )
	//???
	$item2 = GetPlayerInfo( -1 , "item" , 8 )
	//??
	$item = $item1 + $item2
	$nullitem = GetPlayerInfo( -1 , "nullitem" ,0 )
	
	//??????????
	if $Lingdi == -1
		BC( "dialogbox", "player", -1, "Your Guild does not have a Guild Territory, so does not need Advanced Construction Materials." )
		return
	endif
	//????
	if $nullitem < 1
		BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	//????
	if $item < 200
		BC( "dialogbox", "player", -1, "You must have at least 200 Fortified Crystals to exchange for Advanced Construction Material." )	
		return
	endif
	
	//?????
	
	if $item2 >= 200
		$result1 = SubPlayerInfo( -1 ,"item" , 8 , 200)
		if $result1 == 0
			AddPlayerInfo(-1 , "item" , 59788 , 1)
			BC( "dialogbox", "player", -1, "Successfully exchanged for Advanced Construction Materials." )
		endif
	else
		$result2 = SubPlayerInfo( -1 ,"item" , 8 , $item2)
		$temp_item = 200 - $item2
		$result3 = SubPlayerInfo( -1 ,"item" , 1 , $temp_item)
		if $result3 == 0
			AddPlayerInfo(-1 , "item" , 59788 , 1)
			BC( "dialogbox", "player", -1, "Successfully exchanged for Advanced Construction Materials." )
		endif
	endif
										
}

function OnOption7(){
	
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$Lingdi = IsHaveGuildZone($Guildid)	
	//????
	$item1 = GetPlayerInfo( -1 , "item" , 64176 )
	//???
	$item2 = GetPlayerInfo( -1 , "item" , 64175 )
	//??
	$item = $item1 + $item2
	$nullitem = GetPlayerInfo( -1 , "nullitem" ,0 )
	
	//??????????
	if $Lingdi == -1
		BC( "dialogbox", "player", -1, "Your Guild does not have a Guild Territory, so does not need Advanced Construction Materials." )
		return
	endif
	//????
	if $nullitem < 1
		BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
		return
	endif
	//????
	if $item < 200
		BC( "dialogbox", "player", -1, "You must have at least 200 Pet Magic Gems to exchange for Advanced Construction Material." )	
		return
	endif
	
	//?????
	
	if $item2 >= 200
		$result1 = SubPlayerInfo( -1 ,"item" , 64175 , 200)
		if $result1 == 0
			AddPlayerInfo(-1 , "item" , 59788 , 1)
			BC( "dialogbox", "player", -1, "Successfully exchanged for Advanced Construction Materials." )
		endif
	else
		$result2 = SubPlayerInfo( -1 ,"item" , 64175 , $item2)
		$temp_item = 200 - $item2
		$result3 = SubPlayerInfo( -1 ,"item" , 64176 , $temp_item)
		if $result3 == 0
			AddPlayerInfo(-1 , "item" , 59788 , 1)
			BC( "dialogbox", "player", -1, "Successfully exchanged for Advanced Construction Materials." )
		endif		
	endif	
										
}																