
    soma :: Num a => a -> a -> a
    soma a b = (a+b)
    main = do
        line1 <- getLine
        line2 <- getLine
        let x = read line1 :: Int
        let y = read line2 :: Int
        print $ soma x y
