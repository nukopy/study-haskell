module Chap01.Tuple where

-- basic
tup1 = (1, 3)
tup2 = (3, 'a', "hello", 'b', [ x | x <- [5, 10 .. 100], even x ])

-- usage of tuple: x-y plane
planes = [(1, 2), (8, 11), (4, 5)]

-- use pair
pair1 = (8, 11)
pair2 = ("Wow", False)

print1 = print (fst pair1)
print2 = print (snd pair2)

-- zip: ペアを返す
zipList = zip [1, 2, 3, 4, 5] [5, 5, 5, 5, 5]
zipList1 = zip [1 .. 5] (replicate 5 5)
zipList2 = zip [5, 3, 2, 6, 2, 7, 2, 5, 4, 6, 6] ["im", "a", "turtle"]

-- 無限リストによる zip
zipList3 = zip [1, 5 ..] ["apple", "orange", "cherry", "mango"]

-- p.21: 練習 - 直角三角形を見つける
-- 3 辺の長さは全て整数である
-- 各辺の長さは 10 以下である
-- 周囲の長さは 24 に等しい
triangle =
    [ (a, b, c)
    | c <- [1 .. 10]
    , a <- [1 .. c]  -- a が斜辺 c を超えないようにする
    , b <- [1 .. a]  -- b > a は考えなくて良い (a, b, c) = (6, 8, 10), (8, 6, 10) は同じ
    , let aa = a ^ 2
    , let bb = b ^ 2
    , let cc = c ^ 2
    , aa + bb == cc
    , a + b + c == 24
    ]
