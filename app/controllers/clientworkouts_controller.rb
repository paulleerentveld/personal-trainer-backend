class ClientworkoutsController < ApplicationController

    def index
        #@workouts = Workout.all.to_json(include: :exercises)
        @clientworkouts = ClientWorkout.includes(:user, :workout).all
        render :json => @clientworkouts, include: :notes, include: :description, methods: :user_id, methods: :workout_id, include: {workout: {include: {exercises: {methods: [:videoupload_url, :imageupload_url]}}}, user: {}}
    end

    def show
        @clientworkout = ClientWorkout.includes(:user, :workout).find(params[:id])
        render :json => @clientworkout, include: {workout: {include: :exercises}, user: {}}
    
    end

    def new
        @clientworkout = ClientWorkout.new
        @workouts = Exercise.all
        @users = User.all
    end

    def edit
        @clientworkout = ClientWorkout.includes(:user, :workout).find(params[:id])
        render json: @clientworkout
    end

    def create
        @clientworkout = ClientWorkout.includes(:user, :workout).new(clientworkout_params)
        @clientworkout.save
        render json: @clientworkout
    end

    def update
        @clientworkout = ClientWorkout.includes(:user, :workout).find(params[:id])
        @clientworkout.update(clientworkout_params)
        render json: @clientworkout
    end

    def destroy
        @clientworkout = ClientWorkout.find(params[:id])
        @clientworkout.destroy
        render json: { deleted: true }, status: :no_content
    end
    

    private

    def clientworkout_params
        params.permit(:id, :user_id, :workout_id, :startdate, :enddate, :completed, :user, :created_at, :updated_at)
        
    end

end

