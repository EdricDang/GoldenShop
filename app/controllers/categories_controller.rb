class CategoriesController < InheritedResources::Base
  def show
    @category = Category.find(params[:id])
    @categories_list = Category.all
  end

  private

    def category_params
      params.require(:category).permit(:name, :desc)
    end
end

