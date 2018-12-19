class RecipiesController < ApplicationController
    
  def show
    @recipy = Recipy.find_by( id: params[:id] )
  end
  
  def index
  end
    
end