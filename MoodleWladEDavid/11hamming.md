```hs
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
   | x == y = merge xs (y:ys)
   | x < y = x:merge xs (y:ys)
   | y < x = y:merge (x:xs) ys

mescla3 xs ys zs = merge xs (merge ys zs)

hamming = 1:mescla3 xs ys zs
   where xs = [2*i | i <- hamming]
         ys = [3*i | i <- hamming]
         zs = [5*i | i <- hamming]
```