class List < ActiveRecord::Base
  belongs_to :club

  attr_accessible :artist, :category, :title, :club_id, :user_name, :user_id,
                  :listen_link, :media_type, :genre

  has_reputation :votes, source: :user, aggregated_by: :sum

  def genre_viewer
    if genre == 1
      "Pop"
    elsif genre == 2
      "Rock"
    elsif genre == 3
      "Metal"
    elsif genre == 4
      "Dubstep"
    elsif genre == 5
      "Alternative"
    elsif genre == 6
      "R&B"
    elsif genre == 7
      "House"
    elsif genre == 8
      "Folk"
    elsif genre == 9
      "Indie"
    elsif genre == 10
      "Pop rock"
    elsif genre == 11
      "Ska"
    elsif genre == 12
      "Hip hop"
    elsif genre == 13
      "Drum & bass"
    elsif genre == 14
      "Techno"
    elsif genre == 15
      "Jazz"
    else
      "Trash"
    end
  end
end
