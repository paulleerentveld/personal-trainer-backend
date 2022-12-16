class User < ActiveRecord::Base
  has_many :client_workouts, dependent: :destroy
  has_many :workouts, through: :client_workouts

  has_one_attached :avatar, dependent: :purge_later

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :mobile, presence: true
  validates :sex, presence: true
  validates :dob, presence: true
  
  
  scope :clients, -> { where(usertype: "client") }
  scope :trainers, -> { where(usertype: "trainer") }


  def avatar_url
    Rails.application.routes.url_helpers.url_for(avatar) if avatar.attached?
  end

  def fullname
    self.firstname + " " + self.lastname
  end

    
end