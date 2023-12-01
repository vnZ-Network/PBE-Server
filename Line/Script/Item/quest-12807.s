	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011
	//		Author:???
	//		Task:	????
	//
	//****************************************
	
	function OnUseItem(){

//?????????261?
//?????456???(227.155)?(181.209)????????12807,??????:
//????????..
//????456???(119.156)(124.176)????????12807,????????,??????22177??

		$isaccepted = IsTaskAccept( -1, 261 )
		if $isaccepted == 0
			$md = GetPlayerInfo( -1, "mapid" )
			$mx = GetPlayerInfo( -1, "mapposx" )
			$my = GetPlayerInfo( -1, "mapposy" )
			if $md == 456
				if $mx >= 225
					if $my >= 153
						if $mx <= 229
							if $my <= 157
								BC( "screen", "player", -1, "The White Tiger doesn't seem to be here.")
							endif
						endif
					endif
				endif
				if $mx >= 179
					if $my >= 207
						if $mx <= 183
							if $my <= 211
								BC( "screen", "player", -1, "The White Tiger doesn't seem to be here.")
							endif
						endif
					endif
				endif
				if $mx >= 122
					if $my >= 174
						if $mx <= 126
							if $my <= 178
								AddMonsterByFloat( 21277 , 1 , 456 , $mx , $my , 1 )
								PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
								//BC( "screen", "player", -1, "")
							endif
						endif
					endif
				endif
			endif
		endif
		
		
	}