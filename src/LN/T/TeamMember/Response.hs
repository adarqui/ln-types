{-# LANGUAGE DeriveGeneric #-}

module LN.T.TeamMember.Response (
  TeamMemberResponse (..),
  TeamMemberResponses (..),
) where



import           LN.T.Membership
import           LN.T.Prelude
import           LN.T.Visibility



data TeamMemberResponse = TeamMemberResponse {
  teamMemberResponseId         :: Int64,
  teamMemberResponseUserId     :: Int64,
  teamMemberResponseTeamId     :: Int64,
  teamMemberResponseActive     :: Bool,
  teamMemberResponseGuard      :: Int,
  teamMemberResponseCreatedAt  :: Maybe UTCTime,
  teamMemberResponseModifiedBy :: Maybe Int64,
  teamMemberResponseModifiedAt :: Maybe UTCTime,
  teamMemberResponseActivityAt :: Maybe UTCTime
} deriving (Eq, Ord, Show, Read, Generic, Typeable, Out)



data TeamMemberResponses = TeamMemberResponses {
  teamMemberResponses :: [TeamMemberResponse]
} deriving (Eq, Ord, Show, Read, Generic, Typeable, Out)