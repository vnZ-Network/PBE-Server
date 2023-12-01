	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/01/22
	//		Author：	王家麒
	//		TaskName：Item-Vip-59294.s
	//		TaskID：百变精灵
	//
	//****************************************
	
	function OnUseItem(){
	
		$random = RandomNumber ( 0, 10000 )
		
		if $random <= 110
			AddStatus( -1, 7547, 1 )
		endif
		
		if $random > 110
			if $random <= 220
				AddStatus( -1, 7546, 1 )
			endif
		endif
		
		if $random > 220
			if $random <= 330
				AddStatus( -1, 7545, 1 )
			endif
		endif
		
		if $random > 330
			if $random <= 440
				AddStatus( -1, 7544, 1 )
			endif
		endif
		
		if $random > 440
			if $random <= 550
				AddStatus( -1, 7543, 1 )
			endif
		endif
		
		if $random > 550
			if $random <= 660
				AddStatus( -1, 7542, 1 )
			endif
		endif
		
		if $random > 660
			if $random <= 770
				AddStatus( -1, 7541, 1 )
			endif
		endif
		
		if $random > 770
			if $random <= 880
				AddStatus( -1, 7540, 1 )
			endif
		endif
		
		if $random > 880
			if $random <= 990
				AddStatus( -1, 7539, 1 )
			endif
		endif
		
		if $random > 990
			if $random <= 1100
				AddStatus( -1, 7538, 1 )
			endif
		endif
		
		if $random > 1100
			if $random <= 1210
				AddStatus( -1, 7537, 1 )
			endif
		endif
		
		if $random > 1210
			if $random <= 1320
				AddStatus( -1, 7536, 1 )
			endif
		endif
		
		if $random > 1320
			if $random <= 1480
				AddStatus( -1, 7535, 1 )
			endif
		endif
		
		if $random > 1480
			if $random <= 2135
				AddStatus( -1, 7534, 1 )
			endif
		endif
		
		if $random > 2135
			if $random <= 2790
				AddStatus( -1, 7533, 1 )
			endif
		endif
		
		if $random > 2790
			if $random <= 3445
				AddStatus( -1, 7532, 1 )
			endif
		endif
		
		if $random > 3445
			if $random <= 4100
				AddStatus( -1, 7531, 1 )
			endif
		endif
		
		if $random > 4100
			if $random <= 4755
				AddStatus( -1, 7530, 1 )
			endif
		endif
		
		if $random > 4755
			if $random <= 5410
				AddStatus( -1, 7529, 1 )
			endif
		endif
		
		if $random > 5410
			if $random <= 6065
				AddStatus( -1, 7528, 1 )
			endif
		endif
		
		if $random > 6065
			if $random <= 6720
				AddStatus( -1, 7527, 1 )
			endif
		endif
		
		if $random > 6720
			if $random <= 7375
				AddStatus( -1, 7526, 1 )
			endif
		endif
		
		if $random > 7375
			if $random <= 8030
				AddStatus( -1, 7525, 1 )
			endif
		endif
		
		if $random > 8030
			if $random <= 8685
				AddStatus( -1, 7524, 1 )
			endif
		endif
		
		if $random > 8685
			if $random <= 9340
				AddStatus( -1, 7523, 1 )
			endif
		endif
		
		if $random > 9340
			if $random <= 10000
				AddStatus( -1, 7522, 1 )
			endif
		endif
		
	}
