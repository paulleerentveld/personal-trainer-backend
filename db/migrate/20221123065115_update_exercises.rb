class UpdateExercises < ActiveRecord::Migration[6.1]
  def change
    remove_column :exercises, :enddate, :datetime
    add_column :client_workouts, :enddate, :datetime
  end
end
