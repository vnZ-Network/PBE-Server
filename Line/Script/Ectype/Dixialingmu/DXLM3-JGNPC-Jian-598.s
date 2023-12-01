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
		
}
	
	function OnOption0(){

	//???? ??id 479,???? 3--0?9, ???? 13--1?2?3?, ??1?? 4--0?1?
	$ectype_id = GetEctypeID(-1, 479)
	$sum = GetEctypeVar(-1, 3)
	$line = GetEctypeVar(-1, 13)
	$is_open1 = GetEctypeVar(-1, 4)
	
	//??????
	if $is_open1 == 1
		BC( "screen", "map", $ectype_id, "The shrine is glowing with approval.")	
		return
	endif

	//??NPC??	
	DeleteNPC(598, $ectype_id)
	AddNPC(607, $ectype_id)
	BC( "screen", "map", $ectype_id, "You have pledged to the 1st Shrine of Oath. The trial has begun.")
	PlayEffect(-1,"Common\shenshengyiji\tx_shenshengyiji_fire.ini")
	//?????????
	SetEctypeVar(-1, 4, 1)	

	//??????
	$sum = GetEctypeVar(-1, 3)
	$sum = $sum + 1
	SetEctypeVar(-1, 3, $sum)	
	
	//????????1??
	//??????:1-?4???5??125437689,2-?4???5??147839265,3-????198367425,?????13?
	$line = RandomNumber(1,3)
	SetEctypeVar(-1, 13, $line)
	
	if $line == 1
		BC( "screen", "map", $ectype_id, "Shrine of Oath select route 111111")
		BC( "screen", "map", $ectype_id, "Please pledge to the closest Shrine of Oath next.")
	endif

	if $line == 2
		BC( "screen", "map", $ectype_id, "Shrine of Oath select route 222222")
		BC( "screen", "map", $ectype_id, "Please pledge to the closest Shrine of Oath next.")
	endif
	
	if $line == 3
		BC( "screen", "map", $ectype_id, "Shrine of Oath select route 3333333")
		BC( "screen", "map", $ectype_id, "Please pedge to the furthest Shrine of Oath next.")
	endif	


}
	