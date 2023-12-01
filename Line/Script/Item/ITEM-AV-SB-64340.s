 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/25
	//		Author:??? ???
	//		TaskName:ITEM-AV-SB-64340.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
	
		//$t =  GetSystemTime( "yday" )
		//$lt = GetPlayerVar( -1 ,3692 )
		
		$nullitem = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $nullitem < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		
		//if $t == $lt
			//BC( "screen", "player", -1, "GUID:06500000001" )
			//return
		//endif
		
		$info = SubPlayerInfo ( -1 , "item" , 64340 , 1 )
				if  $info != 0
						return
				endif
		
		AddPlayerInfo( -1, "item" , 12417 , 20 )
		
		//SetPlayerVar( -1 , 3692 , $t )
		
		BC( "screen", "player", -1, "You opened Isis' Box, and obtained 20 Adventure Coins" )
		PlayEffect( -1 , "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		
	}