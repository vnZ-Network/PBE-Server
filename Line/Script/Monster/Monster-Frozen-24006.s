	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/7/20
	//		Author��˾�Ĳ�
	//		TaskName��Monster-Frozen-24006.s
	//		TaskID�� ˮȪ����
	//
	//****************************************
	
	function OnDead(){
		//��ȡ��ҹ���id����洢�Ļ�ɱ����,��һ��֮���滻BUFF
		$guildid = GetPlayerInfo ( -1 , "guildid" )
		if $guildid == 0
			return
		endif
		$a = GetGuildVar( $guildid , 0 )
		$a = $a + 1
		AddStatusToGuildMap( 65 , $guildid , 10992 , $a )
		SetGuildVar( $guildid , 0 , $a )
	}
	
	