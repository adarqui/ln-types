{-# LANGUAGE DeriveGeneric #-}

module LN.T.Team.Response (
  TeamResponse (..),
  TeamResponses (..),
) where



import           LN.T.Membership
import           LN.T.Prelude
import           LN.T.Visibility



data TeamResponse = TeamResponse {
  teamResponseId           :: Int64,
  teamResponseUserId       :: Int64,
  teamResponseOrgId        :: Int64,
  teamResponseName         :: Text,
  teamResponseDisplayName  :: Text,
  teamResponseDescription  :: Maybe Text,
  teamResponseMembership   :: Membership,
  teamResponseIcon         :: Maybe Text,
  teamResponseTags         :: [Text],
  teamResponseVisibility   :: Visibility,
  teamResponseActive       :: Bool,
  teamResponseGuard        :: Int,
  teamResponseCreatedAt    :: Maybe UTCTime,
  teamResponseModifiedBy   :: Maybe Int64,
  teamResponseModifiedAt   :: Maybe UTCTime,
  teamResponseActivityAt   :: Maybe UTCTime
} deriving (Eq, Ord, Show, Read, Generic, Typeable, Out)



data TeamResponses = TeamResponses {
  teamResponses :: [TeamResponse]
} deriving (Eq, Ord, Show, Read, Generic, Typeable, Out)
