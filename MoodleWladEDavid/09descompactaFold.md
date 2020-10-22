```hs
descompactaFold ::  [(a, b)] -> ([a], [b]) 
descompactaFold qw = foldr(\(a,b) (xs,ys) -> ([a]++xs,[b]++ys) ) ([],[]) qw

```