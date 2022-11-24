class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :firstname, :lastname, :fullname,:email, :mobile, :height, :weight, :sex, :dob, :authlinked, :usertype, :notes, :image, :avatar, :avatar_url, :created_at, :updated_at
end
