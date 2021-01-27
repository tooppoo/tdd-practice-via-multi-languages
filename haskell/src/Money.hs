module Money where

data Expression =
  Sum { augend :: Money, addend :: Money }

class Reducer a where
  reduce :: a -> String -> Money

instance Reducer Expression where
  reduce (Sum aug add) currency = money (a1 Prelude.+ a2) currency
    where
      Money { amount = a1 } = aug
      Money { amount = a2 } = add

class Times a where
  (*) :: a -> Int -> a
class Add a where
  (+) :: a -> a -> Expression

data Money =
  Money { amount :: Int, currency :: String }
  deriving (Eq, Show)

instance Times Money where
  (Money a c) * m = Money (a Prelude.* m) c
instance Add Money where
  a + b = Sum a b

class Bank a where
  bank_reduce :: a -> String -> Money

instance Bank Expression where
  bank_reduce = Money.reduce
instance Bank Money where
  bank_reduce m _ = m

money :: Int -> String -> Money
money = Money

dollar :: Int -> Money
dollar m = Money m "USD"

franc :: Int -> Money
franc m = Money m "CHF"
