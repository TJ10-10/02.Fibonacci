fibonacci :: Int -> [Integer]
fibonacci n
    |n <= 0     = []
    |n == 1     = [0]
    | otherwise = 0 : 1 : zipWith (+) (fibonacci (n - 2)) (tail $ fibonacci (n - 2))

main :: IO ()
main = print $ unwords $ map show $ take 10 $ fibonacci 10
