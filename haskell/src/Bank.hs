module Bank where

import Money hiding ((+))

reduce :: Expression -> String -> Money
reduce = Money.reduce
