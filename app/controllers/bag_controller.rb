class BagController < ApplicationController

	def index
		@bags = current_buyer.bags
	end

end
