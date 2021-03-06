module LN.T.Star.Stat (
  StarStatResponse (..),
  StarStatResponses (..)
) where



import           LN.T.Ent
import           LN.T.Prelude



data StarStatResponse = StarStatResponse {
  starStatResponseEnt    :: Ent,
  starStatResponseEntId  :: Int64,
  starStatResponseStars  :: Int64
} deriving (Generic, Typeable)



data StarStatResponses = StarStatResponses {
  starStatResponses :: [StarStatResponse]
} deriving (Generic, Typeable)
