	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-area.s
	//		TaskID:????3??????
	//
	//****************************************
	
	function OnDead(){
		$id = GetEctypeID( -1, 217 )
		$n1 = GetEctypeVar( -1, 111 )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )
		//???10?????
			if $n1 == 10
						PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
						BC( "screen", "player", -1, "It seems that the frost has cleared off a little." )
          				$monster = AddMonster( 55002, 1, $id, 100, 60, 1 )
          				$monster = AddMonster( 55002, 1, $id, 102, 60, 1 )
          				$monster = AddMonster( 55002, 1, $id, 99, 61, 1 )
          				$monster = AddMonster( 55002, 1, $id, 104, 61, 1 )
          				$monster = AddMonster( 55002, 1, $id, 98, 63, 1 )
          				$monster = AddMonster( 55002, 1, $id, 104, 63, 1 )
          				$monster = AddMonster( 55002, 1, $id, 99, 65, 1 )
          				$monster = AddMonster( 55002, 1, $id, 104, 65, 1 )
          				$monster = AddMonster( 55002, 1, $id, 100, 66, 1 )
          				$monster = AddMonster( 55002, 1, $id, 103, 66, 1 )
			endif
		//???20?????
			if $n1 == 20
						PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
						BC( "screen", "player", -1, "The frost cleared off a lot." )
          				$monster = AddMonster( 55003, 1, $id, 100, 60, 1 )
          				$monster = AddMonster( 55003, 1, $id, 102, 60, 1 )
          				$monster = AddMonster( 55003, 1, $id, 99, 61, 1 )
          				$monster = AddMonster( 55003, 1, $id, 104, 61, 1 )
          				$monster = AddMonster( 55003, 1, $id, 98, 63, 1 )
          				$monster = AddMonster( 55003, 1, $id, 104, 63, 1 )
          				$monster = AddMonster( 55003, 1, $id, 99, 65, 1 )
          				$monster = AddMonster( 55003, 1, $id, 104, 65, 1 )
          				$monster = AddMonster( 55003, 1, $id, 100, 66, 1 )
          				$monster = AddMonster( 55003, 1, $id, 103, 66, 1 )
			endif
		//???30??????
			if $n1 == 30
				BC( "chat", "player", -1, "It is now safe to claim the Wraith Tome." )
				BC( "screen", "player", -1, "It is now safe to claim the Wraith Tome." )
			endif
		//?????????
		$n1 = $n1 + 1
		SetEctypeVar( -1, 111, $n1 )
	}