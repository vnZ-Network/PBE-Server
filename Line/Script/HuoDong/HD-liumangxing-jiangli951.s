	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/09/05
	//		Author���
	//		TaskName��HD-liumangxing-jiangli951
	//		TaskID����â�ǻ�������һ����ɫ�����ֱ�ʯ
	//
	//****************************************
	
	
	
	
	function OnTaskDone(){
	
		$n = RandomNumber ( 1, 4 )
		//Ŀǰ�͸�һ����ɫ��
		$n = 1
		SetPlayerVar(-1, 3202, $n)
		if $n == 1
			AddPlayerInfo( -1 ,"item", 12159, 1 )
			AddStatus(-1 , 11657 , 1)
			return
		endif
		if $n == 2
			AddPlayerInfo( -1 ,"item", 12160, 1 )
			AddStatus(-1 , 11658 , 1)         			
			return
		endif
		if $n == 3
			AddPlayerInfo( -1 ,"item", 12161, 1 )
			AddStatus(-1 , 11659 , 1)         			
			return
		endif
		if $n == 4
			AddPlayerInfo( -1 ,"item", 12162, 1 )
			AddStatus(-1 , 11660 , 1)         			
			return
		endif
		if $n == 5
			AddPlayerInfo( -1 ,"item", 12163, 1 )
			return
		endif
		if $n == 6
			AddPlayerInfo( -1 ,"item", 12164, 1 )
			return
		endif
		if $n == 7
			AddPlayerInfo( -1 ,"item", 12165, 1 )
			return
		endif	
		
	}