	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC?????1
	//		TaskID:DXLM-JGNPC-Jian-598.s
	//
	//****************************************
	
	function OnRequest(){

	//???? ??id 479,??13--0~10 ??????4--0?1?,??13--1?2?3?
	$ectype_id = GetEctypeID(-1, 479)
	$sum = GetEctypeVar(-1, 13)
	$is = GetEctypeVar(-1, 4)
	$line = GetEctypeVar(-1, 13)
	
	//????????,????NPC,????????
	if $sum < 9
  	if $is == 1
  		if $line == 1
  			BC( "screen", "player", -1, "Please pledge to the closest Shrine of Oath next.")
  			return
  		endif
  		if $line == 2
  			BC( "screen", "player", -1, "Please pledge to the closest Shrine of Oath next.")
  			return
  		endif
  		if $line == 3
  			BC( "screen", "player", -1, "Please pledge to the furthest Shrine of Oath next.")
  			return
  		endif
  	endif
  endif

		
}
	
	function OnOption0(){

	//???? ??id 479,???? 3--0?9, ???? 13--1?2?3?, ??1?? 4--0?1? ????51783
	//???? 51783 ???? 51842
	$ectype_id = GetEctypeID(-1, 479)
	$sum = GetEctypeVar(-1, 3)
	$line = GetEctypeVar(-1, 13)
	$is_open1 = GetEctypeVar(-1, 4)
	$mst_1 = 51842
	$mst_2 = 51783
	
	//??????
	if $is_open1 == 1
		BC( "screen", "map", $ectype_id, "The shrine is glowing with approval.")	
		return
	endif

	//??NPC??	
	DeleteNPC(598, $ectype_id)
	AddNPC(607, $ectype_id)
	BC( "screen", "map", $ectype_id, "You have pledged to the 1st Shrine of Oath. The trial has begun.")
	AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 208, 0)
	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 208, 0)
	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 208, 0)
	AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 195, 0)
	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 195, 0)
	AddMonsterByFloat($mst_1, 1, $ectype_id, 289, 195, 0)
	AddMonsterByFloat($mst_1, 1, $ectype_id, 309, 181, 0)
	AddMonsterByFloat($mst_1, 1, $ectype_id, 299, 181, 0)

	PlayEffect(-1,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")
	//?????????
	SetEctypeVar(-1, 4, 1)	

	//??????
	$sum = GetEctypeVar(-1, 3)
	$sum = $sum + 1
	SetEctypeVar(-1, 3, $sum)	
	BC( "screen", "map", $ectype_id, "Number of shrines pledged to: " , $sum , " ")
	
	//????????1??
	//??????:1-?4???5??125437689,2-?4???5??147839265,3-????198367425,?????13?
	$line = RandomNumber(1,3)
	SetEctypeVar(-1, 13, $line)
	
	if $line == 1
//		BC( "screen", "map", $ectype_id, "GUID:04063000006")
		BC( "screen", "player", -1, "Please pledge to the closest Shrine of Oath next.")
	endif

	if $line == 2
//		BC( "screen", "map", $ectype_id, "GUID:04063000008")
		BC( "screen", "player", -1, "Please pledge to the closest Shrine of Oath next.")
	endif
	
	if $line == 3
//		BC( "screen", "map", $ectype_id, "GUID:04063000010")
		BC( "screen", "player", -1, "Please pledge to the furthest Shrine of Oath next.")
	endif	


}
	
	
	function OnOption1(){
	
	BC("dialogbox","player",-1,"Start from the 1st Shrine of Oath. The next correct shrine will be either the closest or furthest shrine from the one you just successfully pledged to. This does not include the shrines you have already pledged to.")	
		
		
		
}