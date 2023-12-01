  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:zj_Random_item62128.s
	//		TaskID:8??????????????????
	//
	//****************************************


	function OnUseItem(){
		
		$Random = RandomNumber(2000,2002)
  	$r = AddRider(-1,$Random)
    if $r == 0
			BC( "chat", "player", -1, "Mount added to mount list!" )
			//????
			SubPlayerInfo( -1, "item", 62128, 1 )
		return
    endif
		BC( "chat", "player", -1, "Failed to add to mount list" )


}