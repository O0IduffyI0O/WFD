class ProfilesController < ApplicationController
  
  #Get to users/user_id/profile/new
  def new
    @profile = Profile.new
  end
  
end