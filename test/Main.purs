module Test.Main where

import Prelude

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Random (RANDOM)

import Test.Unit (suite)
import Test.Unit.Console (TESTOUTPUT)
import Test.Unit.Main (runTest)

import Network.Wai.Handler.Node.Effects (WaiEffects)
import Test.Test.Network.Wai.Handler.Node.ResponseHeader (mainResponseHeaderSpec)

main :: forall eff. Eff (WaiEffects (random :: RANDOM, testOutput :: TESTOUTPUT | eff)) Unit
main = runTest $ suite "Node Wai" do
  mainResponseHeaderSpec
