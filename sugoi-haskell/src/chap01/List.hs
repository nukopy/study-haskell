module Chap01.List where

lostNumbers = [4, 8, 15, 16, 23, 42]

-- sum'
sum' :: Int -> Int  -- 関数の型情報
sum' 0 = 0  -- 停止条件
sum' n = n + sum' (n - 1)  -- 再帰関数

-- list comprehension
-- example 1
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]

-- example 2: FizzBuzz by list comprehension
fizzBuzzList :: Int -> [String]
fizzBuzzList xs =
    [ if x `mod` 15 == 0
          then "FizzBuzz"
          else if x `mod` 3 == 0
              then "Fizz"
              else if x `mod` 5 == 0 then "Buzz" else show x
    | x <- [1 .. xs]
    ]
-- example 3
lis = [ x + y | x <- [1, 2, 3], y <- [10, 100, 1000] ]
lis1 = [ x * y | x <- [2, 5, 10], y <- [8, 10, 11] ]
lis2 = [ x * y | x <- [2, 5, 10], y <- [8, 10, 11], x * y > 50 ]
-- let を利用して x * y の評価回数を 2 -> 1 回にする
lis2' = [ z | x <- [2, 5, 10], y <- [8, 10, 11], let z = x * y, z > 50 ]

-- example 4
nouns = ["hobo", "frog", "pope"]
adjectives = ["lazy", "grouchy", "scheming"]
lis3 = [ adj ++ " " ++ noun | adj <- adjectives, noun <- nouns ]

-- example 5: length 関数の実装
length' :: [Int] -> Int
length' list = sum [ 1 | _ <- list ]

-- example 6: lower case を除去する関数
removeLowerCase :: String -> String
removeLowerCase string = [ char | char <- string, char `elem` ['A' .. 'Z'] ]
printSample1 = putStr (removeLowerCase "Hahaha! Ahahaha!" ++ "\n") -- "HA"
printSample2 = putStr (removeLowerCase "IdontLIKEFROGS" ++ "\n") -- "ILIKEFROGS"

-- example 7: 入れ子になったリストを処理するための入れ子になったリスト内包表記
lis4 =
    [ [1, 3, 5, 2, 3, 1, 2, 4, 5]
    , [1, 2 .. 9]
    , [1, 2, 4, 2, 1, 6, 3, 1, 3, 2, 3, 6]
    ]
lis5 = [ [ x | x <- lis, even x ] | lis <- lis4 ]
