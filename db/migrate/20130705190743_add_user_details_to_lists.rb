class AddUserDetailsToLists < ActiveRecord::Migration
  def change
    add_column :lists, :user_name, :string
    add_column :lists, :user_id, :integer
  end
end
