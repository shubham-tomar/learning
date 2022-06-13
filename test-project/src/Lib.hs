module Lib
    ( someFunc
    ) where

import qualified Data.ByteString.Lazy as B
import Streamly.Internal.Memory.ArrayStream (splitOnSuffix)

someFunc :: IO ()
someFunc = putStrLn "someFunc"
