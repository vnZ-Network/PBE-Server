	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/12/08
	//		Author��κ��԰
	//		TaskName��HD-jinzita-NPC-1762.s
	//		TaskID��������Կ������
	//
	//****************************************
	
	
	function OnRequest(){
		
		$questa1 = IsTaskAccept( -1, 4313 )
		if $questa1 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa2 = IsTaskAccept( -1, 1775 )
		if $questa2 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa3 = IsTaskAccept( -1, 1783 )
		if $questa3 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa4 = IsTaskAccept( -1, 1791 )
		if $questa4 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa5 = IsTaskAccept( -1, 1799 )
		if $questa5 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa6 = IsTaskAccept( -1, 1807 )
		if $questa6 == 0
			DisableNpcOption(0)
			return
		endif
		}
		
		
		function OnOption0(){
		
		$RankList = GetRankListValue( 1, 499 )
		
		//û���Ϸ�
		if $RankList < 75
				AcceptTask( -1, 4313 )
		endif
		
		//1���Ϸ�
		if $RankList >= 75
			if $RankList <= 89
				AcceptTask( -1, 1775 )
			endif
		endif
		
		//2���Ϸ�
		if $RankList >= 90
			if $RankList <= 99
				AcceptTask( -1, 1783 )
			endif
		endif
		
		//3���Ϸ�
		if $RankList >= 100
			if $RankList <= 109
				AcceptTask( -1, 1791 )
			endif
		endif
		
		//4���Ϸ�
		if $RankList >= 110
			if $RankList <= 119
				AcceptTask( -1, 1799 )
			endif
		endif
		
		//5���Ϸ�
		if $RankList >= 120		
				AcceptTask( -1, 1807 )
		endif	
		
		
	}
	