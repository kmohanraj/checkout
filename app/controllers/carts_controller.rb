class CartsController < ApplicationController

	before_action :get_product

	def create

		  @product = Product.find_by(id: params[:product])
		p @product
		p ">>>>>>>>>>>>>>>>>>>>>>>>>"
		# @cart = Cart.create(cart_params)
		 # @cart = Item.create(product_id: params[:product][:product_id])
		@item = Item.create(:product_id =>params[:product])
	

	end



	private

	def get_product

		@get_product = Product.find_by(id: params[:product])
	p "=================================="
p @get_product
	p "=================================="
	end

	# def get_user
	# 	@user = User.find(:id params[:user])
	# p ")))))))))))))))))))))))))))))))))))))))))))))))))))))"
	# end

	def cart_params
		params.require(:item).permit(:product_id, :total)
	end
end
