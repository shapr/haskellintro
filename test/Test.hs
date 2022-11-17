module Test where

import Core
import Test.Hspec

spec :: Spec
spec = do
    describe "mylength" $ do
        it "should give zero for an empty list" $
            mylength [] `shouldBe` (0 :: Int)
        it "should give 1 for a list with one element" $
            mylength [1 :: Int] `shouldBe` (1 :: Integer)
