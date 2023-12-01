function OnDead(){
		DropMonsterItems(-1, 32216)
		
		//??3???,???????
		$times = GetGlobalVar( 22 )
		$times = $times + 1
		SetGlobalVar( 22 , $times )

		
		//?3058,13058,24096????
		if $times == 3058
			$Line = GetServerLineID()
			#name = GetPlayerInfo( -1 , "name" )
			BC("screen" , "servergroup" , -1 , "Congratulations! In Realm " , $Line , ", the player " , #name , "" , " get the pet Flame Kirin in the event Keep Flame Kirin Away!" )
			BC("chat" , "servergroup" , -1 , "Congratulations! In Realm " , $Line , ", the player " , #name , "" , " get the pet Flame Kirin in the event Keep Flame Kirin Away!" )
			SendMail( -1 , "Warmly congratulate you obtained the pet Flame Kirin!" , "Thanks for your support!" ,  0 , 62553 )
			return
		endif
		
		
		if $times == 13058
			$Line = GetServerLineID()
			#name = GetPlayerInfo( -1 , "name" )
			BC("screen" , "servergroup" , -1 , "Congratulations! In Realm " , $Line , ", the player " , #name , "" , " get the pet Flame Kirin in the event Keep Flame Kirin Away!" )
			BC("chat" , "servergroup" , -1 , "Congratulations! In Realm " , $Line , ", the player " , #name , "" , " get the pet Flame Kirin in the event Keep Flame Kirin Away!" )
			SendMail( -1 , "Warmly congratulate you obtained the pet Flame Kirin!" , "Thanks for your support!" ,  0 , 62553 )
			return
		endif
		
		
		if $times == 24096
			$Line = GetServerLineID()
			#name = GetPlayerInfo( -1 , "name" )
			BC("screen" , "servergroup" , -1 , "Congratulations! In Realm " , $Line , ", the player " , #name , "" , " get the pet Flame Kirin in the event Keep Flame Kirin Away!" )
			BC("chat" , "servergroup" , -1 , "Congratulations! In Realm " , $Line , ", the player " , #name , "" , " get the pet Flame Kirin in the event Keep Flame Kirin Away!" )
			SendMail( -1 , "Warmly congratulate you obtained the pet Flame Kirin!" , "Thanks for your support!" ,  0 , 62553 )
			return
		endif
		
		
}