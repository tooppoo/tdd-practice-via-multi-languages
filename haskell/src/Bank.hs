module Bank where

import Money

reduce :: Expression -> String -> Money
reduce m c = dollar 10