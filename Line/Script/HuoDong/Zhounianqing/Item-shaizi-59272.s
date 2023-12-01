		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-59271.s
	//		TaskID:????
	//****************************************
 
	function OnUseItem(){
	
	
		$rand = RandomNumber ( 1, 6 )
		
		if $rand == 1
			//BC( "chat", "player", -1, "GUID:05329000000" )
			PlayEffect( -1 , "common\huodong\zhounian_sezi\tx_zhounian_sezi_yi.ini" , 1 )
			SetPlayerVar(-1,3965,0 )
			return
		endif
		
		if $rand == 2
			//BC( "chat", "player", -1, "GUID:05329000001" )
			PlayEffect( -1 , "common\huodong\zhounian_sezi\tx_zhounian_sezi_er.ini" , 1 )
			SetPlayerVar(-1,3965,0 )
			return
		endif
		
		if $rand == 3
			//BC( "chat", "player", -1, "GUID:05329000002" )
			PlayEffect( -1 , "common\huodong\zhounian_sezi\tx_zhounian_sezi_san.ini" , 1 )
			SetPlayerVar(-1,3965,0 )
			return
		endif
		
		if $rand == 4
			//BC( "chat", "player", -1, "GUID:05329000003" )
			PlayEffect( -1 , "common\huodong\zhounian_sezi\tx_zhounian_sezi_si.ini" , 1 )
			SetPlayerVar(-1,3965,0 )
			return
		endif
		
		if $rand == 5
			//BC( "chat", "player", -1, "GUID:05329000004" )
			PlayEffect( -1 , "common\huodong\zhounian_sezi\tx_zhounian_sezi_wu.ini" , 1 )
			SetPlayerVar(-1,3965,0 )
			return
		endif
		
		if $rand == 6
			//BC( "chat", "player", -1, "GUID:05329000005" )
			PlayEffect( -1 , "common\huodong\zhounian_sezi\tx_zhounian_sezi_liu.ini" , 1 )
			$luck6 = GetPlayerVar( -1 , 3965 )
			$luck6 = $luck6 + 1
			$chenhao = HaveTitle( -1, 80 )
			SetPlayerVar(-1,3965,$luck6 )
			if $luck6 == 6
				if $chenhao == 0
					return
				else
					#name = GetPlayerInfo( -1 , "name" )
					AddTitle( -1, 80 )
					BC( "messagebox", "player", -1, "Congratulations! {#ffde0d03=You rolled six sixes in a row!#}\nYou have obtained the {#ffffc000=Gambling Tycoon (Strike +6%)#} title." )
					BC("screen" , "server" , -1 ,  "The hero " , #name , " is incredibly lucky! They managed to roll six sixes in a row and has gained the Gambling Tycoon title!" )
					BC("chat" , "server" , -1 ,  "The hero " , #name , " is incredibly lucky! They managed to roll six sixes in a row and has gained the Gambling Tycoon title!" )	
				endif
			endif
		endif
	}