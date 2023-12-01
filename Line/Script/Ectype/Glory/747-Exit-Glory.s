	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/24
	//		Author:???(??,??,??)
	//		TaskName:????747????
	//		TaskID:747-Exit-Glory.s
	//
	//****************************************
	
	function OnRequest(){
	//???? ??id 532 ???? 19
	$ectype_id = GetEctypeID(-1, 532)
	$is_fly = GetEctypeVar(-1, 19)
	
	if $is_fly == 0
		DisableNpcOption(2)
	else
		DisableNpcOption(1)
	endif

}
	
	function OnOption0(){
		
		FlyToMap(-1, 536, 41, 12)
		
	}
	
	function OnOption1(){

	//???? ??id 532 ???? 44147 ?????? 19
	$ectype_id = GetEctypeID(-1, 532)
	$item = 44147
	$is_get = GetPlayerInfo(-1,"item",$item )
	$size = GetTeamAreaSize(-1)
	$monster = 51900

	if $is_get < 1
		BC("dialogbox","player",-1,"You do not have the Angel Heart. Cannot fly to the Island of Reverie.") 
		return
	endif
	
	
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party emembers are too far away. Call them here to explore together!" )
		return
	endif

	$revaluet = SubPlayerInfo(-1, "item", $item, 1)
	if $revaluet != 0
		return
		BC("screen","player", -1, "Error occured when using item.")
	else
		MapPlayerFlyToMap($ectype_id,$ectype_id, 40, 40)
		BC("screen","map",$ectype_id,"You've successfully reached the Island of Reverie. Please rescue the Darknight Rose!") 
		AddMonsterByFloat($monster, 1, $ectype_id, 96, 92, 1)
		SetEctypeVar(-1, 19, 1)
	endif		

}

	function OnOption2(){
		
	//???? ??id 532 
	$ectype_id = GetEctypeID(-1, 532)
	
	FlyToMap(-1, $ectype_id, 40, 40)
	BC("screen","player",-1,"You successfully returned to the Island of Reverie.") 
	
}