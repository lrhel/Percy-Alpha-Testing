--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)


Debug.AddCard(19230408,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Debug.AddCard(19230407,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Debug.AddCard(19230408,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Main Deck
Debug.AddCard(19230407,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(19230407,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(19230407,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--GY
Debug.AddCard(1861629,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(1861629,1,1,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(41999284,1,1,LOCATION_GRAVE,0,POS_FACEUP)
--Spell & Trap Zones
Debug.AddCard(101008082,0,0,LOCATION_SZONE,1,10)
--Monster Zones
Debug.AddCard(39064822,1,1,LOCATION_MZONE,3,1,true)
Debug.AddCard(39064822,0,0,LOCATION_MZONE,3,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()