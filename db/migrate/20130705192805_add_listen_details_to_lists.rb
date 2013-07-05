class AddListenDetailsToLists < ActiveRecord::Migration
  def change
    add_column :lists, :listen_link, :string
    add_column :lists, :media_type, :integer
  end
end
