sumEvenNumbers :: [Int] -> Int
sumEvenNumbers [] = 0  
sumEvenNumbers (x:xs)
    | even x    = x + sumEvenNumbers xs  
    | otherwise = sumEvenNumbers xs      
main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    putStrLn $ "Sum of even numbers: " ++ show (sumEvenNumbers numbers)
