#### 11. maioresQue
INPUT: Número x e uma lista u de números

OUTPUT: Sublista de u cujos números sejam maiores que x


```hs
maioresQue :: Int -> [Int] -> [Int]
maioresQue n lista = filter(>n) lista
```