class BugsController < ApplicationController
    def index
    @bugs = Bug.all
  end

  def show
    @bug = Bug.find(params[:id])
    @category = Category.new
  end

  def new
    @bug = Bug.new
  end

  def create
    @bug = Bug.new(bug_params)
    if @bug.save
      redirect_to bug_path(@bug)
    else
      render "new"
    end
  end

  private

  def bug_params
    params.require(:bug).permit(:title)
  end
end
