```hs
data ArvBin a = Vazia | No a ( ArvBin a ) ( ArvBin a ) deriving (Show)
cheia :: ArvBin a -> Bool
cheia Vazia = True
cheia (No a Vazia Vazia) = True
cheia (No a esq Vazia) = False
cheia (No a Vazia dir) = False
cheia (No a esq dir) = True && cheia esq && cheia dir 

```