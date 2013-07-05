class AddDetailsToClubs < ActiveRecord::Migration
  def change
    add_column :clubs, :location, :string
    add_column :clubs, :contact_person, :string
    add_column :clubs, :telephone_number, :string
    add_column :clubs, :description, :text
  end
end
