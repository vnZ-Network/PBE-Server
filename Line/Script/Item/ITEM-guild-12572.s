 	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/4/17
	//		Author��˾�Ĳ�
	//		TaskName��ITEM-guild-12572.s
	//		TaskID������̽����
	//****************************************
	
	function OnUseItem(){
		$del = SubPlayerInfo ( -1,"item",12572,1)
		if  $del != 0
			return
		endif
		AddPlayerInfo(-1,"item",12574,1)
		PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_blue.ini" )
	}