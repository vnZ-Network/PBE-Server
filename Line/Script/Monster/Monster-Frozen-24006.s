	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/7/20
	//		Author：司文博
	//		TaskName：Monster-Frozen-24006.s
	//		TaskID： 水泉死亡
	//
	//****************************************
	
	function OnDead(){
		//获取玩家公会id下面存储的击杀次数,加一次之后替换BUFF
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		if $guildid == 0
			return
		endif
		$a = GetGuildVar( $guildid , 0 )
		$a = $a + 1
		AddStatusToGuildMap( 65 , $guildid , 10992 , $a )
		SetGuildVar( $guildid , 0 , $a )
	}
	
	