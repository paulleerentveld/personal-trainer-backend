class ModifyUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :type, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :email, :string
    add_column :users, :mobile, :string
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
    add_column :users, :sex, :string
    add_column :users, :dob, :date
    add_column :users, :authlinked, :boolean
    remove_column :users, :name, :string
    remove_column :users, :password_digest, :string
  end
end
