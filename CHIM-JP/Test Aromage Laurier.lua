--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Extra Deck
Debug.AddCard(2857636,0,0,LOCATION_EXTRA,0,8)
--Hand
Debug.AddCard(5050644,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5050644,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(101010017,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--Monster Zones
Debug.AddCard(75878039,0,0,LOCATION_MZONE,1,1,true)
Debug.AddCard(87979586,0,0,LOCATION_MZONE,4,1,true)
Debug.AddCard(48686504,0,0,LOCATION_MZONE,2,1,true)
Debug.AddCard(101010017,0,0,LOCATION_MZONE,0,1,true)
--Monster Zones
Debug.AddCard(2273734,1,1,LOCATION_MZONE,3,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()