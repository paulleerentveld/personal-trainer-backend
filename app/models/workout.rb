class Workout < ApplicationRecord
    has_many :exercise_workouts, dependent: :destroy
    has_many :client_workouts, dependent: :destroy
    has_many :exercises, through: :exercise_workouts
    has_many :users, through: :client_workouts
    

    accepts_nested_attributes_for :client_workouts
    #accepts_nested_attributes_for :exercise_ids

    validates :name, presence: true
    validates :workouttype, presence: true
    #validates :workouttype, inclusion: { in: ["Aerobic", "Strength", "Mobility", "BodyBuilding"]}

    scope :type, ->(input = ["Aerobic", "Strength", "Mobility", "BodyBuilding"]) {where("workouttype IN (?)", input)}


end
