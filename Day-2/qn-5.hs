describeNumber :: Int -> String
describeNumber num
    | num > 0    = "Positive"
    | num < 0    = "Negative"
    | otherwise  = "Zero"

main :: IO ()
main = do
    putStrLn $ describeNumber 5
    putStrLn $ describeNumber (-3)
    putStrLn $ describeNumber 0
