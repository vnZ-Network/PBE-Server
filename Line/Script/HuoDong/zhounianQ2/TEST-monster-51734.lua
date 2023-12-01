

----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2010/11/11
--		Author:???
--		Class:	.Lua
--		AIName:monster-51242.lua
--		Remark:???
----------------------------------------------------
--??-??dps-??5??dps-????
--3--???
--5--5???hp
--6--4???hp
--7--3???hp
--8--2???hp
--9--1???hp
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		playerID = AI:GetEctypeVarInteger(mapid, 110)
		
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
--				AI:Exit()
			end
		end
		
		if nIndex == 2 then
			if a == 1 then
				hpn = AI:GetHP()
				hpmax = AI:GetHPMax()
				hppct = hpn/hpmax*1000000
				hppct = hppct-hppct%1
				if hppct == 1000 then --??????
					AI:SetArray(3,0)
					AI:SetArray(5,hpmax)
					AI:SetArray(6,hpmax)
					AI:SetArray(7,hpmax)
					AI:SetArray(8,hpmax)
					AI:SetArray(9,hpmax)
				else					
					alltime = AI:GetArray(3)
					alltime = alltime+1
					dpsm = hpmax-hpn
					dpsm = dpsm/alltime					
					AI:SetArray(3,alltime)
					
					hp5 = AI:GetArray(5)
					dps5 = hp5-hpn
					dps5 = dps5/5
					
					hp1 = AI:GetArray(9)
					dps1 = hp1-hpn
					
					hppass = AI:GetArray(6)
					AI:SetArray(5,hppass)
					hppass = AI:GetArray(7)
					AI:SetArray(6,hppass)
					hppass = AI:GetArray(8)
					AI:SetArray(7,hppass)
					hppass = AI:GetArray(9)
					AI:SetArray(8,hppass)
					hppass = hpn
					AI:SetArray(9,hppass)
					
					pctold = AI:GetArray(4)
					AI:SetArray(4,hppct)
					if hppct ~= pctold then
						dpsm = dpsm-dpsm%1
						dps5 = dps5-dps5%1
						dps1 = dps1-dps1%1
--						AI:Say("--------Current quantity:"..tostring(alltime))
--						AI:Say("average DPS:"..tostring(dpsm))
--						AI:Say("-5s DPS:"..tostring(dps5))
--						AI:Say("Current DPS:"..tostring(dps1))
--						AI:Say("------------------")
--						AI:ScreenText("Remaining life:"..tostring(hppct),2)
						heat=alltime
			--AI:Say("heat = "..heat)
						time=alltime
						--------------------------------------------------------
						bar="[color=ff00ff00]"
						a=0
						while a<60 do
							a=a+1
							if heat == a then
								bar=bar.."[/color]"
							end
							if heat > a then
								bar=bar.."|"
							else
								bar=bar.."|"
							end
						end
						if heat >= 25 then
							bar=bar.."[/color]"
						end
						--------------------------------------------------------
						text=bar
--						text=text.."GUID:05317000005"
--						text=text.."GUID:05317000006"
--						text=text.."GUID:05317000007"
--						text=text.."GUID:05317000008"
--						text=text.."GUID:05317000009"
						AI:SendMsgToMap(mapid,text)

					end
				end
			end
		end
		
		
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--????
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(1,600000,1)
			AI:SetArray(1,1)
			AI:ScreenText("Starts!",2)
			hpmax = AI:GetHPMax()
			AI:SetArray(5,hpmax)
			AI:SetArray(6,hpmax)
			AI:SetArray(7,hpmax)
			AI:SetArray(8,hpmax)
			AI:SetArray(9,hpmax)
		end
--????
		a = AI:GetArray(2)
		if a == 0 then
			AI:SetTimer(2,1000,65535)
			AI:SetArray(2,1)
		end
		
		
	end