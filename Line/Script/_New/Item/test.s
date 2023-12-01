
function OnUseItem(){
//    ' $posx = GetPlayerInfo(-1, "mapposx")
//    ' $posy = GetPlayerInfo(-1, "mapposy")
//    ' $mapid = GetPlayerInfo(-1, "mapid")
//    ' $ID = 745
//    ' AddNpcByPos($ID,$mapid,$posx,$posy ,60,0)
//    ' BC( "chat", "player", -1, "NPC ID: ",$ID ," X: ",$posx ," Y: ", $posy)
AddPlayerInfo( -1, "prestige" , 1 , 1000 )
$Get = GetPlayerInfo(-1,"prestige", 1)
     BC( "chat", "player", -1, "Divine Soul: ",$Get )
}
