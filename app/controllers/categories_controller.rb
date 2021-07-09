class CategoriesController < ApplicationController
  def create
    @bug = Bug.find(params[:bug_id])
    @category = Category.new(category_params)
    @category.bug = @bug
    if @category.save
      redirect_to bug_path(@bug)
    else
      render "bug/show"
    end
  end

  def show
  end

  private

  def category_params
    params.require(:category).permit(:name, :age)
  end
end
