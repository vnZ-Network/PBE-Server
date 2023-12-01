	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:
	//		Author:
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//??
		$del_count = SubPlayerInfo( -1, "item", 44275, 1 )
		//??????
		if $del_count != 0
			return
		endif
//60990	??????	
//60991	??????	
//60992	??????	
//60993	??????	
//60825	????	

		$pet_id1 = 60990
		$pet_id2 = 60991
		$pet_id3 = 60992
		$pet_id4 = 60993
		$pet_id5 = 60825
		
			#name = GetPlayerInfo(-1 , "name")
			$n = RandomNumber ( 1, 5 )
			if $n == 1
				AddPlayerInfo( -1, "item", $pet_id1, 1 )	
				BC("chat", "servergroup", -1, "The hero ",#name," opened a Rainbow Chest and received Advanced Flamestrike!" )
				return
			endif	
			if $n == 2
				AddPlayerInfo( -1, "item", $pet_id2, 1 )	
				BC("chat", "servergroup", -1, "The hero ",#name," opened a Rainbow Chest and received Advanced Storm!" )
				return
			endif	
			if $n == 3
				AddPlayerInfo( -1, "item", $pet_id3, 1 )
				BC("chat", "servergroup", -1, "The hero ",#name," opened a Rainbow Chest and received Advanced Blizzard!" )	
				return
			endif	
			if $n == 4
				AddPlayerInfo( -1, "item", $pet_id4, 1 )	
				BC("chat", "servergroup", -1, "The hero ",#name," opened a Rainbow Chest and received Advanced Shadowshroud!" )
				return
			endif	
			if $n == 5
				AddPlayerInfo( -1, "item", $pet_id5, 1 )	
				BC("chat", "servergroup", -1, "The hero ",#name," opened a Rainbow Chest and received Advanced Flesh Ream!" )
				return
			endif	
		
	}
