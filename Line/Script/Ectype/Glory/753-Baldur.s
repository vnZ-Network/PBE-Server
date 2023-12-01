	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:???????
	//		TaskID:753-Baldur.s
	//
	//****************************************
	
	function OnRequest(){
	
	$ectypeid = GetEctypeVar(-1, 532)
	$n = GetEctypeVar(-1, 15)
	
	$is_open = $n % 2
	if $is_open > 0
		DisableNpcOption(0)	
	endif
	
	if $n >= 24
		DisableNpcOption(1)
	endif


}
	
	function OnOption0(){

	$ectypeid = GetEctypeID(-1, 532)
	
	$n = GetEctypeVar(-1, 15)
	
	$is_open = $n % 2
	
	if $is_open > 0
		return
	else
		OpenMask(3, $ectypeid)
		BC("screen","map", -1 , "Crooning of ivy and grass, the aroma of roses and lilies. Now, Rainbow Bridge, open!")
		$n = $n + 1
		SetEctypeVar(-1, 15, $n)
	endif
	
		
	}
	
	function OnOption1(){

	$ectypeid = GetEctypeID(-1, 532)
	
	$n = GetEctypeVar(-1, 15)
	
	$max_hp = GetPlayerInfo( -1, "maxhp")
	$hp = GetPlayerInfo( -1, "hp")
	$add_hp = $max_hp - $hp

	if $n > 24
		return
	else
 		AddPlayerInfo( -1, "hp", $add_hp)
		PlayEffect( -1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
		$n = $n + 2
		SetEctypeVar(-1, 15, $n)
	endif
		
	}