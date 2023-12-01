//	----------------------------------------------------
//	--		Copyright£∫PERFECT WORLD
//	--		Modified£∫2011/6/28
//	--		Author£∫÷ÏΩ®≥º
//	--		Class:	.lua
//	--		AIName£∫
//	--		Remark£∫
//	----------------------------------------------------

function OnDead(){
	
		
	  $map_id = GetPlayerInfo(-1 , "mapid")
		$posx = GetPlayerInfo(-1 , "mapposx")
		$posy = GetPlayerInfo(-1 , "mapposy")
		$a = RandomNumber(0,99)
			if $a < 40 
				AddMonsterByFloat( 30238 , 1 , $map_id , $posx , $posy , 0 , 0 ,90 )
				PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)				
			endif
	}