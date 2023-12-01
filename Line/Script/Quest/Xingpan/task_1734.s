//	----------------------------------------------------
//	--		Copyright:PERFECT WORLD
//	--		Modified:2011/8/1
//	--		Author:??
//	--		Class:	.s
//	--		AIName:
//	--		Remark:??????,?????
//	----------------------------------------------------
	
	function OnTaskDone(){			
			BC( "dialogbox", "player", -1, "You have gained 1 Cosmos Point.")
			AddAPPoint(1)			
			$num = GetPlayerVar(-1, 3321 )
			$num = $num + 1
			SetPlayerVar(-1, 3321, $num)
	}


	function OnTaskFailedDone(){
		
		
	}
	
	function OnTaskAccept(){
		
	
	}