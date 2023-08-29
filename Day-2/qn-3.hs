    data Tree = EmptyTree | Node Int Tree Tree

    sumTree :: Tree -> Int
    sumTree EmptyTree = 0
    sumTree (Node value left right) = value + sumTree left + sumTree right

    main :: IO ()
    main = do
        let tree =
                Node 10
                    (Node 5
                        (Node 3 EmptyTree EmptyTree)
                        (Node 8 EmptyTree EmptyTree))
                    (Node 15
                        EmptyTree
                        (Node 20 EmptyTree EmptyTree))
        putStrLn $ "Sum of tree values: " ++ show (sumTree tree)
