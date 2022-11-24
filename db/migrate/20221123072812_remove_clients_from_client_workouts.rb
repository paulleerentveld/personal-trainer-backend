class RemoveClientsFromClientWorkouts < ActiveRecord::Migration[6.1]
  def change
    remove_reference :client_workouts, :client, index: true, foreign_key: true
  end
end

