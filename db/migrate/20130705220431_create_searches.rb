class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :club_name
      t.string :song
      t.string :location

      t.timestamps
    end
  end
end
