class ItemsController < ApplicationController
	def new
		authorize
		@item = Item.new
		@menu = Menu.find_by(id: params[:id])
	end

	def create
		authorize
		@item = Item.new(article_params)
		@menu = Menu.find_by(id: params[:id])
		@item.menu = @menu
		if @item.save
			redirect_to menu
		else
			render 'new'
		end
	end

	private
	def menu_item_params
		params.require(:article).permit(:title, :description, :price)
	end
end
