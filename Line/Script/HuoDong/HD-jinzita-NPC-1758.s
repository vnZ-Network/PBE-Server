	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/12/08
	//		Author：魏东园
	//		TaskName：HD-jinzita-NPC-1758.s
	//		TaskID：金字塔钥匙任务
	//
	//****************************************
	
	
	function OnRequest(){
		
		$questa1 = IsTaskAccept( -1, 4304 )
		if $questa1 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa2 = IsTaskAccept( -1, 1777 )
		if $questa2 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa3 = IsTaskAccept( -1, 1785 )
		if $questa3 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa4 = IsTaskAccept( -1, 1793 )
		if $questa4 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa5 = IsTaskAccept( -1, 1801 )
		if $questa5 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa6 = IsTaskAccept( -1, 1809 )
		if $questa6 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questb1 = IsTaskAccept( -1, 4307 )
		if $questb1 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb2 = IsTaskAccept( -1, 1778 )
		if $questb2 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb3 = IsTaskAccept( -1, 1786 )
		if $questb3 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb4 = IsTaskAccept( -1, 1794 )
		if $questb4 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb5 = IsTaskAccept( -1, 1802 )
		if $questb5 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb6 = IsTaskAccept( -1, 1810 )
		if $questb6 == 0
			DisableNpcOption(1)
			return
		endif
		
	}
		
		function OnOption0(){
		
		$RankList = GetRankListValue( 1, 499 )
		
		//没有老服
		if $RankList < 75
				AcceptTask( -1, 4304 )
		endif
		
		//1级老服
		if $RankList >= 75
			if $RankList <= 89
				AcceptTask( -1, 1777 )
			endif
		endif
		
		//2级老服
		if $RankList >= 90
			if $RankList <= 99
				AcceptTask( -1, 1785 )
			endif
		endif
		
		//3级老服
		if $RankList >= 100
			if $RankList <= 109
				AcceptTask( -1, 1793 )
			endif
		endif
		
		//4级老服
		if $RankList >= 110
			if $RankList <= 119
				AcceptTask( -1, 1801 )
			endif
		endif
		
		//5级老服
		if $RankList >= 120		
				AcceptTask( -1, 1809 )
		endif	
		
		
	}
	
	function OnOption1(){
		
		$RankList = GetRankListValue( 1, 499 )
		
		//没有老服
		if $RankList < 75
				AcceptTask( -1, 4307 )
		endif
		
		//1级老服
		if $RankList >= 75
			if $RankList <= 89
				AcceptTask( -1, 1778 )
			endif
		endif
		
		//2级老服
		if $RankList >= 90
			if $RankList <= 99
				AcceptTask( -1, 1786 )
			endif
		endif
		
		//3级老服
		if $RankList >= 100
			if $RankList <= 109
				AcceptTask( -1, 1794 )
			endif
		endif
		
		//4级老服
		if $RankList >= 110
			if $RankList <= 119
				AcceptTask( -1, 1802 )
			endif
		endif
		
		//5级老服
		if $RankList >= 120		
				AcceptTask( -1, 1810 )
		endif	
		
	}