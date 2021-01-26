module MoneySpec where

import Prelude hiding ((*), (+))

import Test.Hspec
import Test.QuickCheck

import Money
import Bank

spec :: Spec
spec = do
  describe "multiplication" $ do
    describe "$5 * 2" $ do
      it "return $10" $ do
        let five = dollar 5

        (five * 2) `shouldBe` dollar 10
    describe "5CHF * 2" $ do
      it "return 10CHF" $ do
        let five = franc 5

        (five * 2) `shouldBe` franc 10
    describe "equality" $ do
      describe "$5 == $5" $ do
        it "return True" $ do
          let d1 = dollar 5
              d2 = dollar 5

          (d1 == d2) `shouldBe` True
      describe "$5 == $6" $ do
        it "return False" $ do
          let d1 = dollar 5
              d2 = dollar 6

          (d1 == d2) `shouldBe` False
      describe "$5 == 5CHF" $ do
        it "return false" $ do
          let d = dollar 5
              f = franc 5

          (d == f) `shouldBe` False
    describe "currency" $ do
      describe "currency of dollar" $ do
        it "should be USD" $ do
          let Money { currency = c } = dollar 5

          c `shouldBe` "USD"
      describe "currency of franc" $ do
        it "should be CHF" $ do
          let Money { currency = c } = franc 5

          c `shouldBe` "CHF"

  describe "addition" $ do
    describe "$5 + $5" $ do
      it "should return sum" $ do
        let five = dollar 5
            (Sum { augend = aug, addend = add }) = five + five

        aug `shouldBe` five
        add `shouldBe` five

      describe "reduce via Bank" $ do
        it "return $10" $ do
          let five = dollar 5
              sum = five + five
              reduced = Bank.reduce sum "USD"

          reduced `shouldBe` dollar 10
