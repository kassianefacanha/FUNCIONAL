```hs
kolakoski :: [Int]
kolakoski = 1:2:2:concat [ replicate x y | (y,x) <- zip (cycle [1,2]) (tail (tail kolakoski))]
```