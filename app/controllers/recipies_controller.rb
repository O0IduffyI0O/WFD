class RecipiesController < ApplicationController
  
  def new
    @recipy = Recipy.new
  end
    
  def show
    @recipy = Recipy.find_by( id: params[:id] )
  end
  
  def index
  end
    
end