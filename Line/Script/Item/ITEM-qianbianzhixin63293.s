	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/04
	//		Author:??
	//		TaskName:ITEM-qianbianzhixin63293.s
	//		TaskID:????63293
	//
	//****************************************
	
	function OnUseItem(){
	
	//	$level = GetPlayerInfo( -1, "level" )
		//????????
	//	if $level < 35
	//		BC( "chat", "player", -1, "GUID:06733000000" )
	//		return
	//	endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63293, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		$n = RandomNumber(1 , 20)
		if $n == 1
			AddStatus(-1 ,10539 , 1)
		endif
		if $n == 2
			AddStatus(-1 ,10540 , 1)
		endif
		if $n == 3
			AddStatus(-1 ,10541 , 1)
		endif
		if $n == 4
			AddStatus(-1 ,10542 , 1)
		endif
		if $n == 5
			AddStatus(-1 ,10543 , 1)
		endif
		if $n == 6
			AddStatus(-1 ,10544 , 1)
		endif
		if $n == 7
			AddStatus(-1 ,10545 , 1)
		endif
		if $n == 8
			AddStatus(-1 ,10546 , 1)
		endif
		if $n == 9
			AddStatus(-1 ,10547 , 1)
		endif
		if $n == 10
			AddStatus(-1 ,10548 , 1)
		endif
		if $n == 11
			AddStatus(-1 ,10549 , 1)
		endif
		if $n == 12
			AddStatus(-1 ,10550 , 1)
		endif
		if $n == 13
			AddStatus(-1 ,10551 , 1)
		endif
		if $n == 14
			AddStatus(-1 ,10552 , 1)
		endif
		if $n == 15
			AddStatus(-1 ,10553 , 1)
		endif
		if $n == 16
			AddStatus(-1 ,10554 , 1)
		endif
		if $n == 17
			AddStatus(-1 ,10555 , 1)
		endif
		if $n == 18
			AddStatus(-1 ,10556 , 1)
		endif
		if $n == 19
			AddStatus(-1 ,10557 , 1)
		endif
		if $n == 20
			AddStatus(-1 ,10558 , 1)
		endif
		
	}