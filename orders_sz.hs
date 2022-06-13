import qualified Data.ByteString.Lazy as B
import Data.Functor
import Data.Text 
import Data.Text.IO as TIO
import System.IO.Unsafe
-- import Streamly.Internal.Memory.ArrayStream (splitOnSuffix)
-- import Streamly.Internal.Data.Array.Stream.Foreign

import Data.Aeson.Types (parseMaybe, Value, Parser)
import Data.Ord (comparing)
import Data.List (sortBy)
import Data.Scientific (Scientific)

sortByKeyForNumberField :: Text -> [Value] -> [Value]
sortByKeyForNumberField key = sortBy (comparing $ parseMaybe parserFunction)
  where
    parserFunction :: Value -> Parser Scientific
    parserFunction = withObject "some object" (.: key)


-- ORDER BY  order_uuid, payment_status DESC, txn_detail_id DESC, server_time DESC
-- LIMIT 1 BY order_uuid

getJSON :: [Text]
getJSON = split (== '\n') $ unsafePerformIO $ TIO.readFile ("/Users/shubhamtomar/juspay_projects/orders1d.json" :: FilePath)


-- modifyJsonArray = Prelude.take 1 getJSON

modifyJsonArray jsonArray
    | sort 


