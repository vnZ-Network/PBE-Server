	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/21
	//		Author:???
	//		TaskName:task-407.s
	//		TaskID:
	//
	//****************************************
	
	function OnTaskDone(){ 
		
//		$playerid = GetEctypeVar(-1,110)
//		$ectype_ID = GetEctypeID($playerid,565)
//		AddNpcByPos( 1127, $ectype_ID, 59, 93, 180000, 0 )

		#name = GetPlayerInfo(-1,"name")
  	DeleteMonster(475,30714)
  	AddMonsterByFloat(30714,1,475,255,136,0,-1,180)         
  	BC("screen","servergroup",-1,"Through many hardships and dangers, ",#name," has successfully defended the Pillar of the World. Odin has revived in Atlantis!") 
	
  }                              
                                 
                                 
  function OnTaskFailedDone(){   
  	
  	                   
  	                             
  }                              
                                 
  function OnTaskAccept(){    
  
		$ectype_ID = GetEctypeID(-1, 565)
		SetEctypeVar($ectype_ID,7,10)
		SetEctypeVar($ectype_ID,8,0)
		SetEctypeVar($ectype_ID,9,0)
  	
  	DeleteMonster($ectype_ID,30702)
  	DeleteMonster($ectype_ID,30703)
  	DeleteMonster($ectype_ID,30704)
  	DeleteMonster($ectype_ID,30709)
  	DeleteMonster($ectype_ID,30710)
  	DeleteMonster($ectype_ID,30711)
  	DeleteMonster($ectype_ID,30712)
  	DeleteMonster($ectype_ID,30713)
  	DeleteMonster($ectype_ID,30730)
  	DeleteMonster($ectype_ID,30731)
  	
  	AddMonsterByFloat(30702,1,$ectype_ID,141,213,0)
  	AddMonsterByFloat(30703,1,$ectype_ID,141,217,0)
  	
  	//AddMonsterByFloat(30704,1,$ectype_ID,158,216,0)
  	//AddMonsterByFloat(30709,1,$ectype_ID,159,220,0)
  	
  	AddMonsterByFloat(30729,1,$ectype_ID,149,209,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,138,202,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,161,202,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,158,208,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,142,208,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,145,212,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,141,210,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,152,213,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,147,213,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,157,212,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,142,208,0,-1,90)
  	AddMonsterByFloat(30729,1,$ectype_ID,161,209,0,-1,90)
  	
  	//AddMonsterByFloat(30731,1,$ectype_ID,149,218,0)
  	//StartEctypeTimer($ectype_ID,6)
  	
          
  }               