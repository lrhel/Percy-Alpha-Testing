--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Hand
Debug.AddCard(101008065,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(83764718,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(75878039,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(75878039,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Spell & Trap Zones
Debug.AddCard(30834988,0,0,LOCATION_SZONE,1,5)
Debug.AddCard(83778600,0,0,LOCATION_SZONE,2,10)
--Hand
Debug.AddCard(55885348,1,1,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(55885348,1,1,LOCATION_GRAVE,0,POS_FACEUP)
--Monster Zones
Debug.AddCard(5821478,1,1,LOCATION_MZONE,5,1,true)
Debug.ReloadFieldEnd()
