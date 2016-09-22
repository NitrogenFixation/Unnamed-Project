class GuestsController < ApplicationController

	def index
		@guest = Guest.new
	end

	def create
	   @guest = Guest.new(guest_params)
	   if @guest.save
	 	redirect_to '/guestbook'
	   else
		render 'guestbook#index'
	   end
	end

	def guest_params
	   params.require(:guest).permit(:name)
	end

	def guestbook
		@guests = Guest.all
	end

end