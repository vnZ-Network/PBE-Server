	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/09/13
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:44086-Item-BirthdayCake.s
	//
	//****************************************

	function OnUseItem(){

		$item_0 = 44086

	  //????
	  $del_count = SubPlayerInfo(-1, "item", $item_0, 1)
	  if $del_count != 0
	     return
	  endif
		
		AddStatus( -1, 7886, 1 )
		BC(screen, player, -1, "Happy Birthday!")
 		PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )

}