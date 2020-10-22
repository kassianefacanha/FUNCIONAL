```hs
data MultiSet a = MultiSet [(a,Int)] deriving (Show)

makeMultiSet xs = MultiSet (makeMultiSet' ( insertSort xs ))
makeMultiSet' :: [Int] -> [(Int, Int)]
makeMultiSet' [] = []
makeMultiSet' (x:xs)= ( x, ( frequencia x (x:xs) ) ) : makeMultiSet' (filter (/=x) xs) 
insertSort :: Ord a => [a] -> [a]
insertSort [] = []
insertSort (x:xs) = insertSort [ y | y<-xs, y<=x ] ++ [x] ++ insertSort [ y | y<-xs, y>x ];
frequencia :: Int -> [Int] -> Int
frequencia _ [] = 0
frequencia y (x:xs) = if y == x then 1 + (frequencia y xs) else frequencia y xs
```