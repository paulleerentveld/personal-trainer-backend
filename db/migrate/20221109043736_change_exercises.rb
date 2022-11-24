class ChangeExercises < ActiveRecord::Migration[6.1]
  def change
    add_column :exercises, :video, :text
    add_column :exercises, :category, :text
    add_column :exercises, :bodypart, :text
    remove_column :exercises, :url, :text
  end
end
