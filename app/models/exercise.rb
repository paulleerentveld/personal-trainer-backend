class Exercise < ApplicationRecord
    has_many :exercise_workouts, dependent: :destroy
    has_many :workouts, through: :exercise_workouts, dependent: :destroy

    has_one_attached :imageupload, dependent: :purge_later
    has_one_attached :videoupload, dependent: :purge_later

    validates :name, presence: true
    validates :description, presence: true
    validates :category, presence: true
    validates :bodypart, presence: true
    #validates :description, length: {minimum:20}


    def imageupload_url
        Rails.application.routes.url_helpers.url_for(imageupload) if imageupload.attached?
      end

    def videoupload_url
      Rails.application.routes.url_helpers.url_for(videoupload) if videoupload.attached?
    end


end
