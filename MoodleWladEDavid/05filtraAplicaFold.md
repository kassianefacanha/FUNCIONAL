```hs
filtraAplicaFold f p xs = foldr(\x z -> if p x then f x : z else z) [] xs

```