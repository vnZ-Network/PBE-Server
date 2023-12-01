	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-NPC-378.s
	//		TaskID:??????
	//
	//****************************************
	
	//378	???????
	//12732		???
	//176		??ID
	
			function OnRequest(){
		}
	


	function OnOption0(){
			$r1 = IsTaskAccept( -1, 176 )
			$r2 = IsTaskDone( -1, 176 )
			$item = GetPlayerInfo( -1, "item", 12732 )		
			
			
		//????????????,???????????????	
			if $r1 == 0
					if $item > 0
						$sub = SubPlayerInfo(-1,"item",12732,1)
						$done = SetTaskDone( -1, 176 )
						BC( "screen", "player", -1, "The seal of Khufu Pyramid is removed. Enter Khufu Pyramid to challenge Nemo!" )
						PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
					else
						BC( "dialogbox", "player", -1, "You do not have the Stamp of the Netherworld to remove the seal." )
					endif
			else 
					if $r2 == 0
						BC( "dialogbox", "player", -1, "You have removed the seal, face your destiny now!" )
					else
						BC( "dialogbox", "player", -1, "The seal's power is too great, you could not remove it." )
					endif
			endif
		}
	
	
	
	
							