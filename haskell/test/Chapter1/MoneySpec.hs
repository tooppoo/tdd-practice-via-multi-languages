module Chapter1.MoneySpec where

import Test.Hspec
import Test.QuickCheck

import Chapter1.Money

spec :: Spec
spec = do
  describe "1 + 1" $ do
    it "return 2" $ do
      add 1 `shouldBe` 2
