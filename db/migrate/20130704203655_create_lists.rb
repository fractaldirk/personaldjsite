class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :artist
      t.string :title
      t.integer :category
      t.references :club

      t.timestamps
    end
    add_index :lists, :club_id
  end
end
