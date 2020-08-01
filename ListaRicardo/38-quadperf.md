````hs
quadperf :: Int -> Bool
quadperf x = x `elem` [p*p | p <- [1..1000]]
````