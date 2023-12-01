 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/29
	//		Author:???
	//		TaskName:ITEM-molitoukui-12497.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$info = IsTaskAccept(-1, 1298 )
		if $info == 0
			BC( "messagebox", "player", -1, "You have already acquired this quest." )
			return
		endif
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "Your bag is full!" )
			return
		endif
		$a = GetPlayerInfo(-1,"item",12498)
		SubPlayerInfo ( -1,"item",12498,$a )
		BC( "screen", "player", -1, "You have acquired the quest item!" )
		AcceptTask(-1,1298)
		AddPlayerInfo ( -1 ,"item",12498, 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		
	
	}