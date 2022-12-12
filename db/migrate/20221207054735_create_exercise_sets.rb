class CreateExerciseSets < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_sets do |t|
      t.integer :weight
      t.integer :reps
      t.references :exercise_workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
