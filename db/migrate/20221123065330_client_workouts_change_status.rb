class ClientWorkoutsChangeStatus < ActiveRecord::Migration[6.1]
  def change
    remove_column :client_workouts, :status, :boolean
    remove_column :client_workouts, :date, :date
    add_column :client_workouts, :completed, :boolean
  end
end