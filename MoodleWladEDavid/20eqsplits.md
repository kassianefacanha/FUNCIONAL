```hs
eqsplits :: (Eq a, Num a) => [a] -> [([a], [a])]
eqsplits xs = [ (a,b) | (a,b) <- splits xs, sum a == sum b ] 



```