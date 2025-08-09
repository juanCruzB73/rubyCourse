class ArticlesController < ApplicationController
  before_action :set_article, only: [ :show, :edit, :update, :destroy ]

  def index
    @articles=Article.all
  end
  def show
  end
  # https://guides.rubyonrails.org/form_helpers.html
  def new
    @article=Article.new
  end
  def create
    @article=Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice]="Article was created successfully"
      redirect_to @article
    else
      render "new", status: :unprocessable_entity
    end
  end
  def edit
  end
  def update
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice]="Article was created successfully"
      redirect_to @article
    else
      render "edit", status: :unprocessable_entity
    end
  end
  def destroy
    @article.destroy
    redirect_to articles_path
  end
  private
  def set_article
    # this variable is usable in html.erb
    @article = Article.find_by(id: params[:id])
  end
end
