class RecipiesController < ApplicationController
  
  def new
    @recipy = Recipy.new
  end
  
  def create
    @recipy = Recipy.new(recipy_params)
    if @recipy.save
      flash[:success] = "New Recipe Created"
      redirect_to recipies_path
    else
      flash[:danger] = "Recipe not saved! #{@recipy.errors.full_messages.join(", ")}"
      render action: :new
    end
  end
    
  def show
    @recipy = Recipy.find_by( id: params[:id] )
  end
  
  def index
  end
  
  private
    def recipy_params
      params.require(:recipy).permit(:name, :description, :avatar)
    end
  
    
end