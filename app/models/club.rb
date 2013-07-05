class Club < ActiveRecord::Base
  has_many :lists
  attr_accessible :name, :location, :contact_person, :telephone_number, :description,
                  :website
end
