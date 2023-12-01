	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Hellgate-area.s
	//		TaskID:?????
	//
	//****************************************
	
		function OnRequest(){
			
			$jieshu = GetEctypeVar( -1, 60 )	
			if $jieshu == 1
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
			endif
			$diyici = GetPlayerVar(-1,235)
			if $diyici == 0
				DisableNpcOption(3)
			endif
			
			$tiaozhan = IsExistStatus(-1 , 21606 )
			if $tiaozhan != 0
				DisableNpcOption(4)
				SetPlayerVar(-1,237,0)
				return
			endif
			DisableNpcOption(3)
		}
	
		function OnOption0(){
			FlyToMap( -1, 245, 90, 90 )		
			//???????BUFF
			AddStatus(-1 , 11812 , 2)	
			AddStatus(-1 , 11815 , 2)
			AddStatus(-1 , 21606 , 2)
		}
		function OnOption1(){	
			AddStatus(-1 , 11815 , 1)
			AddPlayerInfo(-1,"hp",1000000)
		}		
		function OnOption2(){	
			AddPlayerInfo(-1,"hp",1000000)
		}
		function OnOption3(){	
			AddStatus(-1 , 21606 , 1)
			SetPlayerVar(-1,237,1)
			BC( "screen", "player", -1, "You've decided to use Negative Fate status to go challenge Nemo!")
		}
		function OnOption4(){	
			AddStatus(-1 , 21606 , 2)
			SetPlayerVar(-1,237,0)
			BC( "screen", "player", -1, "You've cancelled Negative Fate status!")
		}