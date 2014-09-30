class LinksController < ApplicationController
	def new
		@link = Link.new
	end

	def create
		@link = Link.new(link_params)
		if @link.save
			redirect_to @link
		else
			render 'new'
		end
	end

	def index
		@links = Link.all
	end

	def show
		@link = Link.find(params[:id])
	end

private
	def link_params
		params.require(:link).permit(:original_url)
	end
end
