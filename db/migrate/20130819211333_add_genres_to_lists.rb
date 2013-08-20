class AddGenresToLists < ActiveRecord::Migration
  def change
    add_column :lists, :genre, :integer
  end
end
