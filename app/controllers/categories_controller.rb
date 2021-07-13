class CategoriesController < ApplicationController
  def create
    @bug = Bug.find(params[:bug_id])
    @category = Category.new(category_params)
    @category.bug = @bug
    if @category.save
      redirect_to bug_path(@bug)
    else
      render 'bug/show'
    end
  end

  def today?
    if params[:name] == 'normal' && params[:age] < 3
      false
    else
      true
  end

  def todaysbugs
    @category = Category.find(params[:id])
    @bug = Bug.find(params[:bug_id])
    @bugs.category.where(today: true)
  end

  private

  def category_params
    params.require(:category).permit(:name, :age)
  end
end
