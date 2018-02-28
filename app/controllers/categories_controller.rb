class CategoriesController < ApplicationController
  
  def index
    @categories = Category.where(ancestry: nil)
  end 
  
  def new
    @category = Category.new
  end 

  def create
    @category = Category.create(category_params)
    redirect_to root_path
  end 

  def show
    @category = Category.friendly.find(params[:id])
    @subcategory = @category.children
    subcategory_ids = @category.child_ids
    @ads = Ad.where(category_id: subcategory_ids)
  end 

  private

  def category_params
    params.require(:category).permit(:name, :ancestry)
  end 
end
