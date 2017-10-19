class BagController < ApplicationController
	before_action :set_bag, only: [:destroy]

	def index
		@bags = current_buyer.bags
	end

	def destroy
    @bag.destroy
    respond_to do |format|
      format.html { redirect_to bag_index_path, notice: 'Item was removed from cart.' }
      format.json { head :no_content }
    end
  end

  def create
  	@bag = Bag.new(bag_params)
  	@bag.buyer_id = current_buyer.id
  	@bag.product_id = params[:product_id]
  	@bag.price = params[:price].to_i * params[:cart][:quantity].to_i

  	respond_to do |format|
	  	if @bag.save
	      format.html { redirect_to bag_index_path, notice: 'Item added to cart.' }
	      format.json { head :no_content }
	    else
	    	format.html { redirect_to product_path, notice: 'Problem detected. Item not added' }
	    end
	  end
  end

  private

  def set_bag
    @bag = Bag.find(params[:id])
  end

  def bag_params
  	params.require(:cart).permit(:product_id, :quantity, :price, :size, :color)
  end
end
