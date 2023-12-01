	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/12/08
	//		Author：魏东园
	//		TaskName：HD-jinzita-NPC-1761.s
	//		TaskID：金字塔钥匙任务
	//
	//****************************************
	
	
	function OnRequest(){
		
		$questa1 = IsTaskAccept( -1, 4310 )
		if $questa1 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa2 = IsTaskAccept( -1, 1773 )
		if $questa2 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa3 = IsTaskAccept( -1, 1781 )
		if $questa3 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa4 = IsTaskAccept( -1, 1789 )
		if $questa4 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa5 = IsTaskAccept( -1, 1797 )
		if $questa5 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questa6 = IsTaskAccept( -1, 1805 )
		if $questa6 == 0
			DisableNpcOption(0)
			return
		endif
		
		$questb1 = IsTaskAccept( -1, 4311 )
		if $questb1 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb2 = IsTaskAccept( -1, 1774 )
		if $questb2 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb3 = IsTaskAccept( -1, 1782 )
		if $questb3 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb4 = IsTaskAccept( -1, 1790 )
		if $questb4 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb5 = IsTaskAccept( -1, 1798 )
		if $questb5 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questb6 = IsTaskAccept( -1, 1806 )
		if $questb6 == 0
			DisableNpcOption(1)
			return
		endif
		
	}
		
		function OnOption0(){
		
		$RankList = GetRankListValue( 1, 499 )
		
		//没有老服
		if $RankList < 75
				AcceptTask( -1, 4310 )
		endif
		
		//1级老服
		if $RankList >= 75
			if $RankList <= 89
				AcceptTask( -1, 1773 )
			endif
		endif
		
		//2级老服
		if $RankList >= 90
			if $RankList <= 99
				AcceptTask( -1, 1781 )
			endif
		endif
		
		//3级老服
		if $RankList >= 100
			if $RankList <= 109
				AcceptTask( -1, 1789 )
			endif
		endif
		
		//4级老服
		if $RankList >= 110
			if $RankList <= 119
				AcceptTask( -1, 1797 )
			endif
		endif
		
		//5级老服
		if $RankList >= 120		
				AcceptTask( -1, 1805 )
		endif	
		
		
	}
	
	function OnOption1(){
		
		$RankList = GetRankListValue( 1, 499 )
		
		//没有老服
		if $RankList < 75
				AcceptTask( -1, 4311 )
		endif
		
		//1级老服
		if $RankList >= 75
			if $RankList <= 89
				AcceptTask( -1, 1774 )
			endif
		endif
		
		//2级老服
		if $RankList >= 90
			if $RankList <= 99
				AcceptTask( -1, 1782 )
			endif
		endif
		
		//3级老服
		if $RankList >= 100
			if $RankList <= 109
				AcceptTask( -1, 1790 )
			endif
		endif
		
		//4级老服
		if $RankList >= 110
			if $RankList <= 119
				AcceptTask( -1, 1798 )
			endif
		endif
		
		//5级老服
		if $RankList >= 120		
				AcceptTask( -1, 1806 )
		endif	
		
	}