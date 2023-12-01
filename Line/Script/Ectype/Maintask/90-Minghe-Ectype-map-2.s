	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/10
	//		Author:???
	//		TaskName:90-Minghe-Ectype-map-2.s
	//		TaskID: ?? ??2????
	//
	//****************************************
	
	function EnterArea(){
	
		$id = GetPlayerID()
		$ectype_id = GetEctypeID( -1 , 244 )
		$Accept = IsTaskAccept( -1 , 147 )
		if $Accept != 0
			BC( "screen" , "player" , -1 , "The call of souls was heard. It was so strange." )
			return
		else
			$revaluet = IsDartProtected($id)
			if $revaluet == -4 
				BC( "screen" , "player" , -1 , "The soul you linked is too far away, please guide it closer to you." )
				return
			endif
			if $revaluet == -3 
				BC( "screen" , "player" , -1 , "You haven't linked to a soul." )
				return
			endif
			if $revaluet < 0 
				BC( "screen" , "player" , -1 , "Unknown Error, No.: ", $revaluet )
				return
			endif
			$revaluet = DelDart($id)
			if $revaluet < 0 
				BC( "screen" , "player" , -1 , "The soul is not in the appointed position, error No.:", $revaluet )
				return
			else
				AddPlayerInfo( -1, "item", 12728 , 1  )
			endif
		endif
		

	}
	
	function LeaveArea(){

		
	}