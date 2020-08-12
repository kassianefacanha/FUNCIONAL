quadperf :: Int -> Bool
quadperf x = x `elem` [p*p | p <- [1..1000]]
main = do
    a <- readLn :: IO Int
    print $ quad