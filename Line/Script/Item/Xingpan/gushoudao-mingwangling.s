	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/14
	//		Author:??
	//		TaskName:mingwangling.s
	//		TaskID:???
	//
	//****************************************

function OnUseItem(){
		//???
		$a = 44115
		//???
		$b = 291
		//?????
		$c = 14068		
    $mapid = GetPlayerInfo( -1 , "mapid" )
		$mapx = GetPlayerInfo( -1 , "mapposx" )
		$mapy = GetPlayerInfo( -1 , "mapposy" )				
		if $mapid != $b
			BC( "screen" , "player" , -1 , "Can only be used in Ancient Beast Island. " )
			BC( "chat" , "player" , -1 , "Can only be used in Ancient Beast Island. " )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", $a , 1  )
		if $info != 0
			return
		endif
		AddMonsterByFloat( $c , 1 , $b , $mapx , $mapy , 2 , -1 )    
}
 