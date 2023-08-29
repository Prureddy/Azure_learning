data Shape = Circle Double | Rectangle Double Double | Triangle Double Double Double

calculateArea :: Shape -> Double
calculateArea (Circle radius) = pi * radius * radius
calculateArea (Rectangle width height) = width * height
calculateArea (Triangle a b c) =
    let s = (a + b + c) / 2
    in sqrt (s * (s - a) * (s - b) * (s - c))

main :: IO ()
main = do
    let circle = Circle 5
        rectangle = Rectangle 4 6
        triangle = Triangle 3 4 5
    putStrLn $ "Area of circle: " ++ show (calculateArea circle)
    putStrLn $ "Area of rectangle: " ++ show (calculateArea rectangle)
    putStrLn $ "Area of triangle: " ++ show (calculateArea triangle)
