	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:?????
	//		TaskID:51874-Butterfly.s
	//
	//****************************************
	
	function OnDead(){

		$ectype_id = GetEctypeID(-1, 532)
		$is = GetEctypeVar(-1, 89)
		
		PlayEffect(0,"common\story\seelbreak2\fire\tx_seelbreak2_fire.ini")				
//---------------------????------------------------------
		//??? ???? 44147

			if $is > 0
				return			
			endif
//------------------------------------------
  		$drop = 44147  
  		$jackpot = RandomNumber( 1 , 100 )
 		 	#name = GetPlayerInfo( -1, "name" )
  		
  		if $jackpot <= 14
  			$result =	AddPlayerInfo(-1,"item",$drop, 1)
        if $result == 0
        	BC( "screen", "map", $ectype_id, "The hero ",#name,"Successfully captured the Heaven Butterfly, which transforms into an Angel Heart!" )
					BC( "chat", "player", -1, "Congratulations, you get the Angel Heart! Use the Assailing Devastator's Portal to reach Island of Reverie." )
  				PlayEffect(0,"common\huodong\aixin\tx_aixin_add01.ini")	
  				SetEctypeVar(-1, 89, 1)
  			endif
  		else
  			BC( "chat", "player", -1, "The butterfly flew away." )	
  			PlayEffect(-1,"common\story\seelbreak2\fire\tx_seelbreak2_fire.ini")		
  		endif	
//----------------------????--------------------	
		

	}