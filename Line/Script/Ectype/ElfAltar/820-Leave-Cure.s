	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/19
	//		Author:???(??,??,??)
	//		TaskName:??????????
	//		TaskID:820-Leave-Cure.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		//0??????????,2 ???1????	
		$pro = GetEctypeVar(-1,0)
		if $pro < 3
			DisableNpcOption(1)	
			DisableNpcOption(2)	
		endif
	
}
	
	function OnOption0(){
		
		FlyToMap(-1, 534, 87, 97)
		
	}
	
	function OnOption1(){

		$ectype_id = GetEctypeID( -1 , 541 )
	
		$time = GetEctypeVar(-1,10)
		$vip = IsDiamondVIP(-1)
		if $vip == 0 
			call heal1
		endif
		if $vip > 0
			if $time >= 10
				BC( "dialogbox", "player", -1, "Sorry, but you've already used all of your healing opportunities.")		
				return
			else
				$time = $time + 1
				SetEctypeVar(-1,10,$time)
				call heal2				
			endif
		endif
											
}	

	function OnOption2(){
		//????(??)

		$ectype_id = GetEctypeID(-1, 541)
		$pro = GetEctypeVar($ectype_id,0)

		if $pro >= 8
			FlyToMap(-1,$ectype_id,29,76)
			return
		endif		
		if $pro >= 6
			FlyToMap(-1,$ectype_id,84,75)
			return
		endif
		if $pro >= 3
			FlyToMap(-1,$ectype_id,100,60)
			return
		endif



}


	//??
	function heal1(){
		
		$level = GetPlayerInfo( -1, "level")
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		
			$add_hp = $max_hp - $hp
			$add_mp = $max_mp - $mp
		 	AddPlayerInfo( -1, "hp", $add_hp)
			AddPlayerInfo( -1, "mp", $add_mp)
			HealAllPet(-1)   	
			PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
			BC( "dialogbox", "player", -1, "You've received a Fae's Blessing. Your HP and MP are fully restored.")		
		
		
}		

	function heal2(){
		
		$level = GetPlayerInfo( -1, "level")
		$max_hp = GetPlayerInfo( -1, "maxhp")
		$max_mp = GetPlayerInfo( -1, "maxmp")
		$hp = GetPlayerInfo( -1, "hp")
		$mp = GetPlayerInfo( -1, "mp")
		$time = GetEctypeVar(-1,10)
		$remain = 10 - $time
		
			$add_hp = $max_hp - $hp
			$add_mp = $max_mp - $mp
		 	AddPlayerInfo( -1, "hp", $add_hp)
			AddPlayerInfo( -1, "mp", $add_mp)
			HealAllPet(-1)   	
			PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
			BC( "dialogbox", "player", -1, "You've received a Fae's Blessing. Your HP and MP are fully restored.",$remain," more healing chances.")		
		
		
}	