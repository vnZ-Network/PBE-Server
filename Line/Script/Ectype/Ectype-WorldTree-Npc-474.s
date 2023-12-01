	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:Ectype-WorldTree-Npc-474.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		$status = IsExistStatus( -1, 10714 )
		if $status == 0
			DisableNpcOption(0)
		endif
	}
	
	function OnOption0(){
		$ectype_ID = GetEctypeID( -1, 250 )
		$status = IsExistStatus( -1, 10714 )
		if $status == 0
			BC( "dialogbox", "player", -1, "You acquired a Pest-Controll Gardener attribute." )
			return
		endif
		
		BC( "dialogbox", "player", -1, "Help me defend the roots against Nidhogg and I will let you past to open the Water Valve. Come talk to me and I'll make you an honorary gardener. That will help you kill Nidhogg's Brood and stop them from blocking the flow of Pesticides." )
		AddStatus( -1, 10714, 1 )
		
			
	}	