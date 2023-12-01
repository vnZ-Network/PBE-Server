	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/25
	//		Author:???
	//		TaskName:zj_gulingyang_item62014.s
	//		TaskID:gulingyang
	//****************************************
	
	function OnUseItem(){
	
		$a = GetPlayerInfo( -1 , "prestige" , 9 )
		if $a < 12000
			BC( "screen", "player", -1, "Your Expedition Reputation has increased.",$a,". Activation available at 12000 points." )
			return
		endif
		$add = AddRider(-1,51)		
		if $add == 0
			BC( "screen", "player", -1, "Mount added to mount list!" )
			SubPlayerInfo( -1, "item", 62014, 1 )			
			return
		endif
			BC( "screen", "player", -1, "Failed to add to mount list" )
		
		
	}
	