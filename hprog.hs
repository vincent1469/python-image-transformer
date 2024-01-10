import System.Environment

subtract255 :: [Int] -> [Int]
subtract255 = map (\x -> 255 - x) -- the code originally written wasnt outputting anything so turned to AI to help

main :: IO ()
--A sequence of actions can be combined as a single composite action using the keyword do.

-- Writing a main I/O function
main = do
    args <- getArgs -- Command line args are collected as a string
    let numbers = map read args :: [Int]
        result = subtract255 numbers
        resultStrings = map show result
        outputString = unwords resultStrings

    putStrLn outputString