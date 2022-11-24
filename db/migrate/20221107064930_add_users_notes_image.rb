class AddUsersNotesImage < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :notes, :string
    add_column :users, :image, :string
  end
end
