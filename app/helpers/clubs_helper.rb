module ClubsHelper
  def club_profile_value(value)
    List.find(:all, :conditions => ["club_id = ? AND genre = ?", @club.id, value]).count
  end
end
