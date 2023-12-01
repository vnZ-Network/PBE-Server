	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/19
	//		Author:???(??,??,??)
	//		TaskName:[????]????
	//		TaskID:837-Exit.s
	//
	//****************************************
	
	function OnRequest(){
		
		$pro = GetEctypeVar(-1,0)
		$Kind = GetEctypeVar(-1,99)
		if $pro != 11
			DisableNpcOption(1)
		endif
		
		if $Kind < 1
			DisableNpcOption(1)
		endif

}
	
	function OnOption0(){
		
		FlyToMap(-1, 563, 79, 54)
		
	}
	
	function OnOption1(){
		
	//???? ??id 566 ????  ?????? 
	$ectype_id = GetEctypeID(-1, 566)
	$item = 44569
	$is_get = GetPlayerInfo(-1,"item",$item )
	$size = GetTeamAreaSize(-1)

	if $is_get < 1
		BC("dialogbox","player",-1,"You don't have a Hartlis Seal. Cannot be teleported.") 
		return
	endif
	
	
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party members are too far away!" )
		return
	endif

	$revaluet = SubPlayerInfo(-1,"item",$item,1)
	if $revaluet != 0
		BC("screen","player",-1,"An error occurred when removing the item; please contact Customer Service.") 
		return
	endif
	
	
	MapPlayerFlyToMap($ectype_id,$ectype_id, 29, 103)
	BC("screen","map",$ectype_id,"You've arrived in Achelous' Domain.") 
	
	StartEctypeTimer($ectype_id,0)
	
	
}
	
	