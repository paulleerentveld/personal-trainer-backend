class ExerciseworkoutsController < ApplicationController

    def index
        @exerciseworkouts = ExerciseWorkout.includes(:exercise_sets).all
        #render :json => @exerciseworkouts, methods: :exercise_sets, include: exercise_sets: 
        render :json => @exerciseworkouts, include: :exercise_sets
    end


end