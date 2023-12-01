	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Pet-Item-63553.s
	//		TaskID:???????
	//****************************************
	
	function OnUseItem(){
		
		$result = HasBattlePet( -1 )
		if $result != 0
			BC( "screen", "player", -1, "You don't have a pet for combat." )
			return
		endif
		$c = IsCanMerge( -1 )
		if $c == -1
			BC( "screen", "player", -1, "Your pet cannot use Meld Fruit." )
			return
		endif
		$b = GetPetExtraMergeTimes( -1 )
		if $b == 1
			BC( "screen", "player", -1, "Your pet has used Meld Fruit. It has expired." )
			return
		endif
		$a = AddPetExtraMergeTimes( -1 , 1 )
		if $a == 0
			SubPlayerInfo ( -1 , "item" , 63553 , 1 )
			BC( "screen", "player", -1, "You used Meld Fruit on the pet." )
			return
		endif
		
	}

