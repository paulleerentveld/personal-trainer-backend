class ModifyUsersType < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :usertype, :string
    remove_column :users, :type, :string
  end
end
