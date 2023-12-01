	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:59948_Item_SilverHorn.s
	//
	//****************************************

	function OnUseItem(){
		
		
		//??????? BOSS		
		$item = 59948
		$ectype_id = GetEctypeID(-1, 540)
		$Des_x = 200
		$Des_y = 190
		$pos_x = GetPlayerInfo(-1, "mapposx")
		$pos_y = GetPlayerInfo(-1, "mapposy")		
		
		//????
		if $ectype_id < 25501
			BC("screen","player",-1,"The Silver Trumpet can only be used on the island in the southeast of the Gold Coast.")
			BC("chat","player",-1,"The Silver Trumpet can only be used on the island in the southeast of the Gold Coast.")
			return
		endif
		if $ectype_id > 25600
			BC("screen","player",-1,"The Silver Trumpet can only be used on the island in the southeast of the Gold Coast.")
			BC("chat","player",-1,"The Silver Trumpet can only be used on the island in the southeast of the Gold Coast.")
			return
		endif		
		
		if $pos_x < $Des_x
			BC("screen","player",-1,"The Silver Trumpet can only be used on the island in the southeast of the Gold Coast.")
			BC("chat","player",-1,"The Silver Trumpet can only be used on the island in the southeast of the Gold Coast.")
			return
		endif	
		if $pos_y < $Des_y
			BC("screen","player",-1,"The Silver Trumpet can only be used on the island in the southeast of the Gold Coast.")
			BC("chat","player",-1,"The Silver Trumpet can only be used on the island in the southeast of the Gold Coast.")
			return
		endif			
					
		
		$BOSS_3ss = 52321
		$BOSS_3S = 52322
		$BOSS_3 = 52323
		
		$n_score = GetEctypeVar(-1, 20)
		$s_score = GetEctypeVar(-1, 21)
		$sum = $n_score + $s_score
		
		//????
		$revaluet = SubPlayerInfo(-1, "item", $item, 1)
		if $revaluet != 0
			BC( "chat", "player", -1, "The Silver Trumpet does not sound. Try it again." )
			return
		else
			PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )
			if $sum >= 20
				AddMonsterByFloat($BOSS_3ss, 1, $ectype_id, 239,232,1)		
			else
				if $sum > 5
					AddMonsterByFloat($BOSS_3S, 1,$ectype_id, 239,232, 1)
				else
					AddMonsterByFloat($BOSS_3, 1, $ectype_id, 239,232, 1)
				endif
			endif
		endif


}