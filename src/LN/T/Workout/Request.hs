{-# LANGUAGE DeriveGeneric #-}

module LN.T.Workout.Request (
  WorkoutRequest (..),
  defaultWorkoutRequest,
) where



import           LN.T.Prelude
import           LN.T.Workout



data WorkoutRequest = WorkoutRequest {
  workoutRequestData        :: WorkoutData,
  workoutRequestTitle       :: Maybe Text,
  workoutRequestDescription :: Maybe Text
} deriving (Generic, Typeable)



defaultWorkoutRequest :: WorkoutRequest
defaultWorkoutRequest = WorkoutRequest {
  workoutRequestData        = WorkoutEmpty,
  workoutRequestTitle       = Nothing,
  workoutRequestDescription = Nothing
}
