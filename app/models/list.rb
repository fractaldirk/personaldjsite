class List < ActiveRecord::Base
  belongs_to :club

  attr_accessible :artist, :category, :title, :club_id, :user_name, :user_id,
                  :listen_link, :media_type

  has_reputation :votes, source: :user, aggregated_by: :sum
end
