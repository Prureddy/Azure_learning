data Person = Student String Int | Employee String Int

showPerson :: Person -> String
showPerson (Student name age) = "Name: " ++ name ++ ", Age: " ++ show age ++ " (Student)"
showPerson (Employee name age) = "Name: " ++ name ++ ", Age: " ++ show age ++ " (Employee)"

main :: IO ()
main = do
    let student = Student "Alice" 20
        employee = Employee "Bob" 30
    putStrLn $ showPerson student
    putStrLn $ showPerson employee
