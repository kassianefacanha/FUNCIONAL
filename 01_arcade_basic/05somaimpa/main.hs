somaImpares :: Integral a => [a] -> a
somaImpares [] = 0
somaImpares xs = sum(filter odd xs)
main = do
    inputdata <- getContents
    putStrLn $ show $ somaImpares $ map (read :: String -> Int) $ lines inputdata