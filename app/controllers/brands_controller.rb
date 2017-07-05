class BrandsController < ApplicationController
  def new
  	@brand = Brand.new
  	@categories = @brand.categories.build
  	@products = @brand.products.build
  end

  def create
  	byebug
  	@brand = Brand.new(brand_params)
  	if @brand.save
  		redirect_to brands_path
  	else
  		render 'new'
  	end
  end


  def index
  	@brands = Brand.all
  end

  def show
  end

private
  
  def brand_params
  	params.require(:brand).permit(:name,:est,:country, :categories_attributes => [:name,:description,:id],:products_attributes => [:name,:price,:quantity,:id])
  end
end
