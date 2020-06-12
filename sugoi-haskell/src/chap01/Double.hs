doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe 2
doubleSmallNumber x = if x > 100 then x else x * 2 -- Haskell では if は文ではなく値を返す「式」である
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

conanO'Brien = "It's a-me, Conan O'Brien!"
