class ExerciseSet < ApplicationRecord
  belongs_to :exercise_workout, :class_name => 'ExerciseWorkout'
  
end
