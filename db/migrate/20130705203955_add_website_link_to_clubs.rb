class AddWebsiteLinkToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :website, :string
  end
end
