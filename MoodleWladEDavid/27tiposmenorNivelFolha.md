```hs
data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Show)
menorNivelFolha :: ArvBin a -> [a]
menorNivelFolha t = nivel (menorNivel t) t 
folhas:: Eq a => ArvBin a-> [a]
folhas (Vazia) = []
folhas (No x Vazia Vazia) = [x]
folhas (No x esq Vazia) = folhas esq
folhas (No x Vazia dir) = folhas dir
folhas (No x esq dir) = folhas esq ++ folhas dir
nivel :: Int -> ArvBin a -> [a]
nivel _ Vazia = []
nivel 0 (No x Vazia Vazia) = [x]
nivel n (No x esq dir) = ( nivel (n-1) esq ) ++ ( nivel (n-1) dir )
menorNivel :: ArvBin a -> Int
menorNivel (No x Vazia Vazia) = 0
menorNivel (No x esq Vazia) = menorNivel esq + 1
menorNivel (No x Vazia dir) = menorNivel dir + 1
menorNivel (No x esq dir) = ( min (menorNivel esq) (menorNivel dir) ) +1
nivelFolha :: Int -> ArvBin a -> [a]
nivelFolha _ Vazia = []
nivelFolha 0 (No x Vazia Vazia) = [x]
nivelFolha 0 (No x esq dir) = []
nivelFolha n (No x esq dir) = nivelFolha (n-1) esq ++ nivelFolha (n-1) dir
```