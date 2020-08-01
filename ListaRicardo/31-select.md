#### 31. selec
INPUT: Uma lista qualquer u e uma lista de posições P

OUTPUT: Lista das chaves de u cujas posições estão em P


````hs
select :: String -> [Int] -> String
select s [] = []
select s xs = s !! (head xs) : (select s (tail xs))
````