class MenusController < ApplicationController

	def new
		authorize
		@menu = Menu.new
	end

	def create
		authorize
		@menu = Menu.new(menu_params)
		@menu.user = current_user
		if @menu.save
			render 'show'
		else
			render 'new'
		end
	end

	def index
		@menus = Menu.all
	end

	def show
		@menu = Menu.find(params[:id])
	end

	private
	def menu_params
		params.require(:menu).permit(:name)
	end
end
