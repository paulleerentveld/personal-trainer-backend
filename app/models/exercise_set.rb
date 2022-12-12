class ExerciseSet < ApplicationRecord
  belongs_to :exercise_workout, :class_name => 'ExerciseWorkout'
  #has_many :recipies, :class_name => ‘Recipie’
  
end
