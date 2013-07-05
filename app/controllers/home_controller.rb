class HomeController < ApplicationController
  def index
    @lists = List.find_with_reputation(:votes, :all, order: 'votes desc', :conditions => [ "user_id = ?", current_user.uid ])
    @find_club_name = Club.find(:all)
    @search = Search.new
  end

  def instructions
  end
end
