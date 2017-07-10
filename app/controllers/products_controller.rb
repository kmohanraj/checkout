class ProductsController < ApplicationController
	
	before_action :authenticate_user!, except: [:index, :home]



	def index
		@products = Product.all

	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:notice] = "success"
			redirect_to products_path
		else
			flash[:notice] = "somthing wrong"
			render "new"
		end
	end

	def show

	end

	private

	def product_params
	params.require(:product).permit(:name, :desc, :in_stock,:price)
	end
end
