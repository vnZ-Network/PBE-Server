  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/07/24
	//		Author��������
	//		TaskName��skillzhuque.s
	//		TaskID����ȸ���Ƽ���
	//
	//****************************************
	
	function OnDead(){
		
		AddStatus( -1, 6401, 1 )
		PlayEffect(-1,"common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0)
		
		$get = RandomNumber( 0, 30 )
		if $get > 0
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 54064 , 1 )
		
	}