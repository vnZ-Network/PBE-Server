	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/23
	//		Author:???
	//		TaskName:????
	//		TaskID:mapid = 540
	//
	//****************************************

	function OnCreate(){
		

	
	}
	




	function InitTimer(){

		//???1 5????2_1_2ss = 52313  2_1_2s = 52314  2_1_2 = 52315

		$ectype_id = GetEctypeID( -1 , 540 )
		
		SetEctypeTimer( 9 , 1, "EctypeTimer0" )
		SetEctypeTimer( 1 , 1 , "EctypeTimer1" )
		SetEctypeTimer( 2 , 1 , "EctypeTimer2" )
		SetEctypeTimer( 3 , 1 , "EctypeTimer3" )
		SetEctypeTimer( 4 , 1 , "EctypeTimer4" )
		SetEctypeTimer( 5 , 10 , "EctypeTimer5" )


	}

	function EctypeTimer0(){
		$ectype_id = GetEctypeID( -1 , 540 )
		//??
		
		$mon1_1 = 52295
		$mon1_2 = 52296
		$mon1_3 = 52297

 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 154, 267, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 158, 254, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 144, 249, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 157, 248, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 156, 263, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 147, 243, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 159, 264, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 160, 241, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 161, 254, 1 ,0 ,0 )
 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 162, 248, 1 ,0 ,0 )

  	AddMonsterByFloat( $mon1_2 , 1, $ectype_id, 151, 258, 1 ,0 ,0 )		
  	
//  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 154, 267, 1 ,0 ,0 )
//  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 149, 254, 1 ,0 ,0 )
// 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 146, 249, 1 ,0 ,0 )
// 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 138, 254, 1 ,0 ,0 )
// 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 149, 263, 1 ,0 ,0 )
//  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 152, 266, 1 ,0 ,0 )
// 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 159, 264, 1 ,0 ,0 )
// 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 154, 258, 1 ,0 ,0 )
// 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 161, 254, 1 ,0 ,0 )
// 		AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 162, 248, 1 ,0 ,0 )
//
//  	AddMonsterByFloat( $mon1_2 , 1, $ectype_id, 151, 258, 1 ,0 ,0 )		 	
 
//  	AddMonsterByFloat( $mon1_3 , 1, $ectype_id, 85, 245, 1 ,0 ,0 )
		
		//??????NPC
		DeleteNPC( 784 , -1 )
		DeleteNPC( 787 , -1 )
		DeleteNPC( 788 , -1 )
		DeleteNPC( 789 , -1 )
		DeleteNPC( 790 , -1 )
		DeleteNPC( 791 , -1 )
		DeleteNPC( 792 , -1 )
		DeleteNPC( 793 , -1 )
		DeleteNPC( 795 , -1 )
		DeleteNPC( 796 , -1 )
		DeleteNPC( 797 , -1 )
		
		//??SS????5??
		SetEctypeVar(-1,96,300)
		
//		AddMonsterByFloat( 52307 , 1, $ectype_id, 112, 142, 1 ,0 ,0 )	
//		AddMonsterByFloat( 52308 , 1, $ectype_id, 101, 119, 1 ,0 ,0 )	
//		AddMonsterByFloat( 52313 , 1, $ectype_id, 79, 243, 1 ,0 ,0 )	
//		AddMonsterByFloat( 52316 , 1, $ectype_id, 97, 252, 1 ,0 ,0 )		
//		AddMonsterByFloat( 52327 , 1, $ectype_id, 223, 140, 1 ,0 ,0 )		
//		AddMonsterByFloat( 52321 , 1, $ectype_id, 232, 233, 1 ,0 ,0 )  
	
//		BC("screen","map",$ectype_id,"GUID:04408000000")
//		BC("chat","map",$ectype_id,"GUID:04408000001")
		

}		



	function EctypeTimer1(){
	
	//???SS??? ??
	//???5??,?? ??SS??????? SS ? S????,??????????????? ; ?? normal ???? ????????
		
		$ectype_id = GetEctypeID( -1 , 540 )
		$mon2_1_2ss = 52313
		$mon2_1_2s = 52314
		$mon2_1_2 = 52315				
		$time = GetEctypeVar(-1,96)
//		BC( "screen", "map",$ectype_id, "GUID:04408000002"$time )

		$is_conquer = GetEctypeVar(-1,19)
		if $is_conquer == 11
			return
		endif
			
		$time = $time - 1
		SetEctypeVar(-1,96,$time)

		if $time == 240
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 4 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 4 min." )
		endif
		if $time == 180
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 3 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 3 min." )
		endif
		if $time == 120
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 2 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 2 min." )
		endif
		if $time == 60
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 1 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 1 min." )
		endif
		
		if $time == 0
			BC( "screen", "map",$ectype_id, "Naga SS class Warriors are tired of fighting and want to run away." )
			BC( "chat", "map",$ectype_id, "Naga SS class Warriors are tired of fighting and want to run away." )
			SetEctypeVar(-1,44,1)
			SetEctypeVar(-1,96,300)
		endif

		
		if $time > 0
			StartEctypeTimer($ectype_id, 1)
		endif
		
		
	}
	
	
	function EctypeTimer2(){
	
	//???S??? ??
	//???5??,?? ??SS??????? SS ? S????,??????????????? ; ?? normal ???? ????????
		
		$ectype_id = GetEctypeID( -1 , 540 )
		$mon2_1_2ss = 52313
		$mon2_1_2s = 52314
		$mon2_1_2 = 52315				
		$time = GetEctypeVar(-1,96)
//		BC( "screen", "map",$ectype_id, "GUID:04408000013"$time )
			
		$is_conquer = GetEctypeVar(-1,19)
		if $is_conquer == 5
			return
		endif
			
		$time = $time - 1
		SetEctypeVar(-1,96,$time)

		if $time == 240
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 4 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 4 min." )
		endif
		if $time == 180
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 3 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 3 min." )
		endif
		if $time == 120
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 2 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 2 min." )
		endif
		if $time == 60
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 1 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 1 min." )
		endif
		
		if $time == 0
			BC( "screen", "map",$ectype_id, "Naga S class Warriors are tired of fighting and want to run away." )
			BC( "chat", "map",$ectype_id, "Naga S class Warriors are tired of fighting and want to run away." )
			SetEctypeVar(-1,45,1)
			SetEctypeVar(-1,96,300)
		endif

		
		if $time > 0
			StartEctypeTimer($ectype_id, 2)
		endif
		

	}


	function EctypeTimer3(){

	//???normal?? ??
	//???5??,?? ??SS??????? SS ? S????,??????????????? ; ?? normal ???? ????????
		
		$ectype_id = GetEctypeID( -1 , 540 )
		$mon2_1_2ss = 52313
		$mon2_1_2s = 52314
		$mon2_1_2 = 52315				
		$time = GetEctypeVar(-1,96)
//		BC( "screen", "map",$ectype_id, "GUID:04408000024"$time )

		$is_conquer = GetEctypeVar(-1,19)
		if $is_conquer == 1
			return
		endif
			
		$time = $time - 1
		SetEctypeVar(-1,96,$time)

		if $time == 240
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 4 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 4 min." )
		endif
		if $time == 180
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 3 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 3 min." )
		endif
		if $time == 120
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 2 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 2 min." )
		endif
		if $time == 60
			BC( "screen", "map",$ectype_id, "The remaining time for challenging Warrior is 1 min." )
			BC( "chat", "map",$ectype_id, "The remaining time for challenging Warrior is 1 min." )
		endif
		
		if $time == 0
			BC( "screen", "map",$ectype_id, "Naga Warriors are tired of fighting and want to run away." )
			BC( "chat", "map",$ectype_id, "Naga Warriors are tired of fighting and want to run away." )
			SetEctypeVar(-1,18,0)
			SetEctypeVar(-1,96,300)
		endif
		
		if $time > 0
			StartEctypeTimer($ectype_id, 3)
		endif
  
		

}

	function EctypeTimer4(){
	

}

	function EctypeTimer5(){


		

}		