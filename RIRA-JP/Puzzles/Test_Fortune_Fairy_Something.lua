--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck
Debug.AddCard(100246017,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(31560081,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(69181753,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(1434352,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(100246017,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(100246017,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(70368879,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2295440,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2273734,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(83764718,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(2460565,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(2273734,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(100246017 ,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Monster Zones
Debug.AddCard(64973287,0,0,LOCATION_MZONE,3,1,true)
Debug.AddCard(75878039,0,0,LOCATION_MZONE,2,1,true)
--Spell & Trap Zones
Debug.AddCard(83968380,0,0,LOCATION_SZONE,1,10)
Debug.AddCard(30241314,0,0,LOCATION_SZONE,2,10)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()