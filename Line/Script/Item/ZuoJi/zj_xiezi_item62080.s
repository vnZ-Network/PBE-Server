	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/09/10
	//		Author:??
	//		TaskName:zj_xiezi_item62080.s
	//		TaskID:62080
	//
	//****************************************
	

	function OnUseItem(){
	
		 $r = AddRider(-1,1116)
		 if $r == 0
			BC( "screen", "player", -1, "You get a new mount." )
			//????
			SubPlayerInfo( -1, "item", 62080, 1 )
			return
		 endif
		 	BC( "screen", "player", -1, "Failed to add the mount." )

        }