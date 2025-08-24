class CategoriesController < ApplicationController
  before_action :set_category, only: [ :show, :edit, :update, :destroy ]
  def index
    @categories=Category.paginate(page: params[:page], per_page: 5)
  end
  def show
  end
  def new
    @category=Category.new
  end
  def create
    @category=Category.new(category_params)
    if @category.save
      flash[:notice]="Category saved"
      redirect_to @category
    else
      render "new", status: :unprocessable_entity
    end
  end
  def edit
  end
  def update
    if @category.update(category_params)
      flash[:notice]="Category was updated"
      redirect_to @category
    else
      render "edit", status: :unprocessable_entity
    end
  end
  def destroy
    @category.destroy
    redirect_to categories_path
  end
  private
    def set_category
      @category=Category.find_by(id: params[:id])
    end
    def category_params
      params.require(:category).permit(:name)
    end
end
