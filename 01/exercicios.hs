main = do
    putStrLn "Hello name?"
    name <- getLine
    putStrLn("Hey " ++ name ++ " , demais")