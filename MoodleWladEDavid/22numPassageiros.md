```hs
data Trem a = Vagao a ( Trem a ) | Vazio deriving Show
type Quantidade = Int
type Peso = Int
data Carga = SemCarga | Passageiro Quantidade | Mercadoria Peso deriving Show
numPassageiros :: Trem Carga -> Int 
numPassageiros(Vagao (SemCarga) Vazio) = 0
numPassageiros (Vagao (Passageiro x) Vazio)  = x
numPassageiros (Vagao (Mercadoria x) Vazio)  = 0
numPassageiros(Vagao (SemCarga) c) = numPassageiros c
numPassageiros (Vagao (Passageiro x) c)  = x + numPassageiros c
numPassageiros (Vagao (Mercadoria x) c)  =  numPassageiros c


```