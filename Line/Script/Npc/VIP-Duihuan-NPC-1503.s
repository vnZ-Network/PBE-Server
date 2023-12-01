		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/01
	//		Author:???
	//		TaskName:VIP-Duihuan-NPC-1503.s
	//		TaskID:????????????
	//
	//****************************************
	
	function OnRequest(){
		//???????????????
		$item = GetPlayerInfo(-1, "item", 59325)
		if $item == 0
				DisableNpcOption(0)
				DisableNpcOption(1)
		endif
	}	
		
	function OnOption0(){
	//??5????
	  $result = SubPlayerInfo(-1, "item", 59325, 1)
		if $result == 0
			AddPlayerInfo(-1, "item", 59841, 1)
			BC( "screen", "player", -1, "Congratulations, you have exchanged for a LV5 Gem Coin!" )
			return
		endif
	}
		
  function OnOption1(){
  //????????
  	$result = SubPlayerInfo(-1, "item", 59325, 1)
		if $result == 0
			AddPlayerInfo(-1, "item", 59324, 1)
			BC( "screen", "player", -1, "Congratulations, you have exchanged for a Oracle Ring Pack!" )
			return
		endif
  	
  }