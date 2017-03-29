class ProductsController < InheritedResources::Base

  def index
    @products = Product.all
    @category = Category.all.map{|c|[c.name,c.id]}
    @categories_list = Category.all
    @title_page = ''
  end

  def new
    if current_user
      @product = Product.new
      @categories = Category.all.map{|c|[c.name,c.id]}
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
  end

  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
    # debug spec: binding.pry
    if @product.save
      redirect_to '/products', notice: 'Product was successfully created.'
    else
      render :new, error: 'Errors when create product'
    end
  end

  def edit
    if current_user
      @product = Product.find(params[:id])
      @categories = Category.all.map{|c|[c.name,c.id]}
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
  end

  def my_product
    if current_user
      @product = Product.where(user_id: current_user.id)
      @categories = Category.all.map{|c|[c.name,c.id]}
      @title_page = 'Your product'
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
  end

  private

  def product_params
    params.require(:product).permit(
      :image,
      :name,
      :description,
      :price,
      :year,
      :category_id,
      :user_id
      )
  end
end

