class ItemsController < ApplicationController
	def new
		authorize
		@item = Item.new
		@menu = Menu.find_by(id: params[:menu_id])
	end

	def create
		authorize
		@item = Item.new(item_params)
		@menu = Menu.find_by(id: params[:menu_id])
		@item.menu = @menu
		if @item.save
			redirect_to menu_path(@menu)
		else
			render 'new'
		end
	end

	private
	def item_params
		params.require(:item).permit(:title, :description, :price, :menu_id)
	end
end
