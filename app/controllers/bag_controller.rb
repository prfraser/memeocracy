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

  private

  def set_bag
    @bag = Bag.find(params[:id])
  end
end
