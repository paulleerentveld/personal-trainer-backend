class ExercisesController < ApplicationController
    #before_action :require_logged_in
    #skip_before_action :require_logged_in, only: [:index]

    def index
        @exercises = Exercise.all
        render json: @exercises, methods: [:imageupload_url, :videoupload_url]
    end

    def show
        @exercise = Exercise.find(params[:id])
        render json: @exercise, methods: [:imageupload_url, :videoupload_url]
    end

    def new
        @exercise = Exercise.new
        render json: @exercise
    end

    def edit
        @exercise = Exercise.find(params[:id])
        render json: @exercise
    end

    def create
        @exercise = Exercise.new(exercise_params)
        @exercise.save
        render json: @exercise, methods: [:imageupload_url, :videoupload_url]
    end


    def update
        @exercise = Exercise.find(params[:id])
        @exercise.update(exercise_params)
        render json: @exercise, methods: [:imageupload_url, :videoupload_url]
    end

    def destroy
        @exercise = Exercise.find(params[:id])
        @exercise.workouts.clear
        @exercise.destroy
        render json: { deleted: true }, status: :no_content
    end
    

    private

    def exercise_params
        params.permit(:exercise, :id, :name, :description, :image, :video, :category, :bodypart, :imageupload, :videoupload)
    end


end
