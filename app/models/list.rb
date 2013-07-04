class List < ActiveRecord::Base
  belongs_to :club
  attr_accessible :artist, :category, :title, :club_id
end
