,	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/20
	//		Author:???
	//		TaskName:90-TMainLine-Monster-60059.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		
		$Var1 = GetServerVar( 136 )
		$Var2 = $Var1 + 1
		SetServerVar( 136, $Var2 )
		
		$Var3 = GetServerVar( 136 ) 
		if $Var3 == 10
			BC( "screen" , "map" , 245 , "Angry Flame Lizard appeared in the Khufu Desert Depths at (142, 103)." )
			PlayEffect(-1,"skill\Common\zhendongguai\tx_zhendongguai_keep.ini")
			AddMonster( 55060 , 1 , 245 , 55 , 40 , 3  )
			SetServerVar( 136 , 0 )
		endif
		
		
		
	}
	