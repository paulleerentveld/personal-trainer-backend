class Exercise < ApplicationRecord
    has_many :exercise_workouts
    has_many :workouts, through: :exercise_workouts

    has_one_attached :imageupload
    has_one_attached :videoupload

    validates :name, presence: true
    validates :description, presence: true
    #validates :description, length: {minimum:20}


    def imageupload_url
        Rails.application.routes.url_helpers.url_for(imageupload) if imageupload.attached?
      end

    def videoupload_url
    Rails.application.routes.url_helpers.url_for(videoupload) if videoupload.attached?
    end


end
