  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/11/21
	//		Author��������
	//		TaskName��ħ������
	//		TaskID��Item-mofadilei.s
	//
	//****************************************
	
	function OnUseItem(){
		$ectype_ID = GetPlayerInfo( -1, "mapid" )
		if $ectype_ID < 26221
			SubPlayerInfo( -1, "item", 44543,1 )
			SubPlayerInfo( -1, "item", 44544,1 )
			SubPlayerInfo( -1, "item", 44545,1 )
			SubPlayerInfo( -1, "item", 44546,1 )
			SubPlayerInfo( -1, "item", 44547,1 )
			SubPlayerInfo( -1, "item", 44548,1 )
			SubPlayerInfo( -1, "item", 44549,1 )
			SubPlayerInfo( -1, "item", 44550,1 )
			SubPlayerInfo( -1, "item", 44551,1 )
			SubPlayerInfo( -1, "item", 44552,1 )
			RemoveStatusByID( -1, 6483 )
			RemoveStatusByID( -1, 6484 )
			RemoveStatusByID( -1, 6485 )
			RemoveStatusByID( -1, 6486 )
			return
		endif
		if $ectype_ID > 26320
			SubPlayerInfo( -1, "item", 44543,1 )
			SubPlayerInfo( -1, "item", 44544,1 )
			SubPlayerInfo( -1, "item", 44545,1 )
			SubPlayerInfo( -1, "item", 44546,1 )
			SubPlayerInfo( -1, "item", 44547,1 )
			SubPlayerInfo( -1, "item", 44548,1 )
			SubPlayerInfo( -1, "item", 44549,1 )
			SubPlayerInfo( -1, "item", 44550,1 )
			SubPlayerInfo( -1, "item", 44551,1 )
			SubPlayerInfo( -1, "item", 44552,1 )
			RemoveStatusByID( -1, 6483 )
			RemoveStatusByID( -1, 6484 )
			RemoveStatusByID( -1, 6485 )
			RemoveStatusByID( -1, 6486 )
			return
		endif
		
		OpenNpcDialog(-1 ,2345)
	}