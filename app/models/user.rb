class User < ActiveRecord::Base
  has_one_attached :avatar
  
  scope :clients, -> { where(usertype: "client") }
  scope :trainers, -> { where(usertype: "trainer") }


  def avatar_url
    Rails.application.routes.url_helpers.url_for(avatar) if avatar.attached?
  end

  def fullname
    self.firstname + " " + self.lastname
  end

    
end