class Search < ActiveRecord::Base
  attr_accessible :club_name, :location, :song

  def results
    @results ||= find_results
  end

private
  def find_results
    results = Club.order(:name)
    results = results.where("name like ?", "%#{club_name}%") if club_name.present?
    results = results.where("location like ?", "%#{location}%") if location.present?
    results
  end
end
