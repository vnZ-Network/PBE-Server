	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/11/8
	//		Author���
	//		TaskName��HD-leishengdezhufu-NPCchuansong.s
	//		TaskID������ף����̳����ű�
	//
	//****************************************
	
	
	function OnRequest(){
		
		$level = GetPlayerInfo( -1, "level" )
			
		if $level < 20
			DisableNpcOption(0)
		endif

		
	}
	//����ȥ
	
	function OnOption0(){
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 20
			return
		endif
		
		$result = FlyToMap( -1, 64, 51, 51 ,1)
	}