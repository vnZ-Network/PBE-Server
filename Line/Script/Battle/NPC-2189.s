//****************************************
//
//		Copyright:PERFECT WORLD
//		Modified:2010/03/10
//		Author:??
//		TaskName:????-????
//		TaskID:NPC-2189.s
//
//****************************************
function OnRequest(){
	$id = GetPlayerID()
	$camp = GetBattleCamp( $ectype_ID  , $id )
	
	if $camp != 2
		DisableNpcOption(0) 
	endif	
}

function OnOption0(){
	$max_mp = GetPlayerInfo( -1, "maxmp")
	$mp = GetPlayerInfo( -1, "mp")
	$add_mp = $max_mp - $mp	
	$id = GetPlayerID()
	$camp = GetBattleCamp( $ectype_ID  , $id )
	
	if $camp != 2
		BC( "chat", "player", -1, "Only members from Mani can restore MP!" )
		return
	endif	
	
	
	AddPlayerInfo( -1, "mp", $add_mp)
	PlayEffect(-1,"skill\Priest\shengminghuifu\hit\tx_priest_shengminghuifu_hit.ini")
	
	
}

