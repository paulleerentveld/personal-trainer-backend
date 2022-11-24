class UpdateClientWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :client_workouts, :startdate, :datetime
    add_column :exercises, :enddate, :datetime
  end
end
