class CategoriesController < ApplicationController
    def new
    end

    def index
    end

    def show
    end

    def create
        @category = Category.new(category_params)
        if @category.save
          redirect_to @category
        else
          render :new, status: :unprocessable_entity
        end
    end
      
    private

    def category_params
        params.require(:category).permit(:name)
    end
end