class AddUserToclientworkouts < ActiveRecord::Migration[6.1]
  def change
    add_reference :client_workouts, :user, index: true
    add_foreign_key :client_workouts, :users
  end
end
