class ExerciseWorkout < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout
  has_many :exercise_sets
  
end
