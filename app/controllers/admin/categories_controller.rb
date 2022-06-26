module Admin
  class CategoriesController < Admin::AdminController
    before_action :set_category, only: %i[edit update destroy]
    
    def index
      @categories = Category.all
    end

    def new
      @category = Category.new
    end

    def create
      @category = Category.new params_category
      if @category.save
        redirect_to admin_categories_path
      else
        render :new
      end
    end

    def edit; end

    def update
      if @category.update params_category
        redirect_to admin_categories_path
      else
        render :index
      end
    end

    def destroy
      @category.destroy!
      redirect_to admin_categories_path
    end

    private

    def params_category
      params.require(:category).permit :name
    end

    def set_category
      @category = Category.find_by id: params[:id]
    end
  end
end
