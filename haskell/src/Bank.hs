module Bank where

import Money hiding ((+))

reduce :: Expression -> String -> Money
reduce (Sum aug add) = money amount
  where
    Money { amount = a1 } = aug
    Money { amount = a2 } = add
    amount = a1 + a2
