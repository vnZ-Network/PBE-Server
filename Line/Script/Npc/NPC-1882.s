	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:NPC-1882.s
	//		TaskID:???? ??NPC
	//
	//****************************************
	
	function OnRequest(){	
	
		DisableNpcOption(0)
		DisableNpcOption(1)
	
	}
	function OnOption0(){
		
		//--------???????3642?,????????-----
		$a = GetPlayerVar(-1,3642)
		$b = $a -100
		if $a > 100
			BC( "screen", "player", -1,"Your Astral Force is less than 100. You cannot trade for an Adventure Coin " )
			return
		endif
		SetPlayerVar(-1,3642,$b)
		AddPlayerInfo(-1,"item",12417,1)
		BC( "screen", "player", -1,"You traded 100 Astral Force for one Adventure Coin " )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		endif
	}	
	function OnOption1(){
		
		//--------???????3642?,????????-----
		$c = GetPlayerVar(-1,3642)
		BC( "screen", "player", -1,"Your [Astral Force] isÿ" ,$c," points.")
			
	}	
	
	
	
	
	
	