	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/11
	//		Author:??
	//		TaskName:Vip-Item-44427.s
	//		TaskID:vip??? 10? 4038
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$add = 10
		$item = 44427
		$num = GetPlayerVar( -1, 4038 )
		$num = $num + $add
		//????
		$del_count = SubPlayerInfo( -1, "item", $item, 1 )
		//????????
		if $del_count != 0
			return
		endif
		SetPlayerVar( -1, 4038, $num )
		BC( "chat", "player",-1 ,"Used VIP Prestige Card, remaining VIP prestige chances: ",$num,"times!" )
		
		
	}
