  //		Modified:2012/6/15
	//		Author:??
	//		TaskName:Item-datanbao-hadisideyizhi.s
	//		TaskID:??????,???????????????
	//****************************************
	
	function OnUseItem(){
		$item_id = 44262
		//???
		$pet_id1 = 62561
		$pet_id2 = 62563
		//???
		$pet_id3 = 62564
		//???
		$pet_id4 = 62566
		//???
		$pet_id5 = 62568
		//???
		
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

    $result = SubPlayerInfo(-1,"item",$item_id,1)
		if $result == 0
			#name = GetPlayerInfo(-1 , "name")
			$n = RandomNumber ( 1, 5 )
			if $n == 1
				AddPlayerInfo( -1, "item", $pet_id1, 1 )	
				BC("screen", "servergroup", -1, "The hero ",#name," used Hades' Will, and received a Furios Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," used Hades' Will, and received a Furios Pet Egg!" )
				return
			endif	
			if $n == 2
				AddPlayerInfo( -1, "item", $pet_id2, 1 )	
				BC("screen", "servergroup", -1, "The hero ",#name," used Hades' Will, and received a Latamantis Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," used Hades' Will, and received a Latamantis Pet Egg!" )
				return
			endif	
			if $n == 3
				AddPlayerInfo( -1, "item", $pet_id3, 1 )
				BC("screen", "servergroup", -1, "The hero ",#name," used Hades' Will, and received an Aeacus Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," used Hades' Will, and received an Aeacus Pet Egg!" )	
				return
			endif	
			if $n == 4
				AddPlayerInfo( -1, "item", $pet_id4, 1 )	
				BC("screen", "servergroup", -1, "The hero ",#name," used Hades' Will, and received a Sphinx Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," used Hades' Will, and received a Sphinx Pet Egg!" )
				return
			endif	
			if $n == 5
				AddPlayerInfo( -1, "item", $pet_id5, 1 )	
				BC("screen", "servergroup", -1, "The hero ",#name," used Hades' Will, and received an Alraune Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," used Hades' Will, and received an Alraune Pet Egg!" )
				return
			endif	
		else
			BC( "screen", "player", -1, "Failed to use item" )
		endif		
	}