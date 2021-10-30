class Article365sController < ApplicationController
  before_action :set_article_365, only: [:show, :edit, :update, :destroy]

  # GET /article_365s
  def index
    @article_365s = Article365.all
  end

  # GET /article_365s/1
  def show
  end

  # GET /article_365s/new
  def new
    @article_365 = Article365.new
  end

  # GET /article_365s/1/edit
  def edit
  end

  # POST /article_365s
  def create
    @article_365 = Article365.new(article_365_params)

    if @article_365.save
      redirect_to @article_365, notice: 'Article 365 was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /article_365s/1
  def update
    if @article_365.update(article_365_params)
      redirect_to @article_365, notice: 'Article 365 was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /article_365s/1
  def destroy
    @article_365.destroy
    redirect_to article_365s_url, notice: 'Article 365 was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_365
      @article_365 = Article365.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def article_365_params
      params.require(:article_365).permit(:title, :body)
    end
end
