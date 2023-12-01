	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/0
	//		Author:??
	//		TaskName:HD-waerjilidekaoyan-quest21.s
	//		TaskID:?????21???????
	//
	//****************************************
	
	
	function OnTaskDone(){
		
		
		$level = GetPlayerInfo( -1, "level" )
		//???????:????=(????^2+100)*4
		$a = $level * $level
		$b = $a + 100
		$a1 = $b * 4
		$b1 = $level - 29
		$c1 = $b1 * 35
		$d1 = $c1 + 1000
		$e1 = $a1 * $d1
		$add_exp = $e1 / 1000
		//??????:????=??*(??+10)*(200-??)/150
		$a = $level * 500
		$add_money = $a / 3
		
		//?4??
		AddPlayerInfo( -1, "prestige", 32 ,4 )
	
		//---------------------------
		AddPlayerInfo( -1, "exp", $add_exp )
		//BC( "chat", "player", -1, "GUID:05170000000",$add_exp )
		AddPlayerInfo( -1, "money", $add_money )
		//BC( "chat", "player", -1, "GUID:05170000001",$add_money )
	
	
	}