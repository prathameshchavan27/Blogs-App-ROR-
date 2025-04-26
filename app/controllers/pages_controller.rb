class PagesController < ApplicationController
    def home
      redirect_to articles_path if logged_in?
      @articles = Article.order(created_at: :desc)
    end
end
