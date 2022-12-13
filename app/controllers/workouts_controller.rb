class WorkoutsController < ApplicationController
    #before_action :require_logged_in
    #skip_before_action :require_logged_in, only: [:index]

    def index
        #@workouts = Workout.all.to_json(include: :exercises)
        @workouts = Workout.includes(:exercises).all
        #render :json => @workouts, methods: :exercise_ids, include: {exercises: {methods: [:videoupload_url, :imageupload_url]}}
        render :json => @workouts, methods: :exercise_ids, include: {exercises: {methods: [:videoupload_url, :imageupload_url]}}
    end

    def search 
        @workouts = Workout.where("name LIKE ?", "%" + params[:q] + "%")
        render json: @workouts
    end

    def show
        #@workout = Workout.find(params[:id]).to_json(include: :exercises)
        @workout = Workout.includes(:exercises).find(params[:id])
        render :json => @workout, include: {exercises: {only: :name}}
        #render :json => Movie.all, only: [:title, :date_released, :score], include: {studios: {only: :name}, characters: {only: :name}}
    end

    def new
        @workout = Workout.new
        @exercises = Exercise.all
    end

    def edit
        @workout = Workout.includes(:exercises).find(params[:id])
        render json: @workout
    end

    def create
        @workout = Workout.includes(:exercises).new(workout_params)
        @workout.save
        render json: @workout
    end

    def update
        @workout = Workout.includes(:exercises).find(params[:id])
        @workout.update(workout_params)
        render json: @workout
    end

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
        render json: { deleted: true }, status: :no_content
    end
    

    private

    def workout_params
        #params.require(:workout).permit(:name, :workouttype, :search, :client_id, exercise_ids: [:id, :name])
        params.permit(:id, :workout, :name, :workouttype, :search, :client_id, :exercise_ids => [])
        
        #params.fetch(:workout, {}).permit(:id, :name, :workouttype, :search, :client_id, :exercise_ids => [])
        
    end


end
