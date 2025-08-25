class ArticlesController < ApplicationController
  before_action :set_article, only: [ :show, :edit, :update, :destroy ]
  before_action :set_categories, only: [ :new, :edit ]
  before_action :require_user, except: [ :show, :index ]
  before_action :require_same_user, only: [ :update, :edit, :destroy ]
  def index
    @articles=Article.paginate(page: params[:page], per_page: 5)
  end
  def show
  end
  # https://guides.rubyonrails.org/form_helpers.html
  def new
    @article=Article.new
  end
  def create
    @article=Article.new(article_params)
    @article.user = current_user
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
    puts "########"
    puts article_params
    puts "########"
    if @article.update(article_params)
      flash[:notice]="Article was updated successfully"
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
    def set_categories
      @categories=Category.all
    end
    def set_article
      # this variable is usable in html.erb
      @article = Article.find_by(id: params[:id])
    end
    def article_params
      params.require(:article).permit(:title, :description, category_ids: [])
    end
    def require_same_user
      if current_user != @article.user && !current_user.admin
        redirect_to article_path(@article)
      end
    end
end
