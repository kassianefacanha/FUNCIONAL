interior :: [a] -> [a]
interior [] = []
interior (x:xs) = (take ((length xs) - 1) xs)
main = do
    inputdata <- getContents
    print $ interior $ map (read :: String->Int) (lines inputdata)