class HomeController < ApplicationController
  def index
    @lists = List.where("user_id = ?", current_user.uid)
    @find_club_name = Club.find(:all)
  end

  def instructions
  end
end
