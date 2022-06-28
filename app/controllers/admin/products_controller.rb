module Admin
  class ProductsController < Admin::AdminController
    before_action :set_product, only: %i[edit update destroy]

    def index
      @products = Product.all
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new params_product
      if @product.save
        redirect_to admin_products_path
      else
        render :new
      end
    end

    def edit; end

    def update
      if @product.update params_product
        redirect_to admin_products_path
      else
        render :edit
      end
    end

    def destroy
      @product.destroy!
      redirect_to admin_products_path
    end

    private

    def params_product
      params.require(:product).permit :name, :price, :quantity, :category_id, :description, :image
    end

    def set_product
      @product = Product.find_by id: params[:id]
    end
  end
end
