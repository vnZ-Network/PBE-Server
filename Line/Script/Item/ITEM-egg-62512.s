	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-62512.s
	//		TaskID:???
	//
	//****************************************
	
	function OnUseItem(){
		$ItemID1 = GetPlayerInfo( -1, "item", 62512 )
		if $ItemID1 < 1
			return
		endif
		
		$count00 = GetPetCount( -1 )
		$count01 = GetPetMaxCount( -1 )
		if $count00 == $count01
			BC( "screen", "player", -1, "Pet list is full! You cannot have more pets now." )
			return
		endif
		
		$Sub0 = SubPlayerInfo( -1, "item", 62512, 1 )
		if $Sub0 != 0
			return
		endif
		
		AddPet( -1, 2770, 1, 0 )
		BC( "screen", "player", -1, "You have acquired a pet!" )
  	BC( "messagebox", "player", -1, "You have acquired a pet!" )
	}