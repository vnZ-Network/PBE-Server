	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/05
	//		Author:???
	//		TaskName:SY-Quest-1596.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnTaskDone(){
		
		AddMapPlayerInfo( 2, "exp", 50000 )
		AddNPC( 1885 )
		#name = GetPlayerInfo( -1, "name" )
		SetServerVar( 1000, #name )
		SetServerVar( 99, 1 )
		BC( "chat", "server", -1, "The hero ",#name," has brought the Trapped Osiris to Rhea. Touched by their courage, she has given them an Oracle Ring Box." )
		BC( "screen", "server", -1, "The hero ",#name," has brought the Trapped Osiris to Rhea. Touched by their courage, she has given them an Oracle Ring Box." )
		
	}