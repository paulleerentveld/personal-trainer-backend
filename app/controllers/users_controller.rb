class UsersController < ApplicationController
    def new
    end

    def index
      
      if params[:email]
        @users = User.find_by(email: params[:email])
      else
        @users = User.all
      end
      render json: @users
      
    end

    def clients
      @clients = User.clients
      render :json => @clients, methods: :avatar_url
      #render :json => @workouts, methods: :exercise_ids, include: {exercises: {}}
      #render json: UserSerializer.new(@clients).serializable_hash
    end
    
    def trainers
      @trainers = User.trainers
      render json: @trainers
    end

    def show
      @user = User.find(params[:id])
      #render json: @user
      render json: UserSerializer.new(@user).serializable_hash[:data][:attributes]
    end

    def findbyemail
      @user = User.find_by(email: params[:email])
      render json: @user
    end

    def edit
      @user = User.find(params[:id])
    end
  
    def create
      @user = User.create(user_params)
      @user.usertype = "client"
      @user.save
      render json: @user
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end
  
    private
  
    def user_params
      params.require(:user).permit(:user, :firstname, :lastname, :email, :usertype, :mobile, :height, :weight, :sex, :dob, :authlinked, :notes, :image, :avatar, :avatar_url)
    end
  end
