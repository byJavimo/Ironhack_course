class LaptopsController < ApplicationController
	def index
		@laptops = LaptopModel.all 
	end
	def show 
		@laptop = LaptopModel.find(params[:id])
	end
	def new
		@laptop = LaptopModel.new
	end
	def edit
		@laptop = LaptopModel.find(params[:id])
	end
	def create
		@laptop = LaptopModel.new (laptop_params)
		@laptop.save
		redirect_to laptop_path(@laptop)
	end
	def update
		@laptop = LaptopModel.find(params[:id])
		@laptop.update(laptop_params)
		redirect_to laptop_path(@laptop)
	end
	def destroy
		@laptop = LaptopModel.find(params[:id])
		@laptop.destroy

		redirect_to root_path
	end
	private 
		def laptop_params
			params.require(:laptop).permit(:Brand, :Model, :Processor_brand, :RAM_size, :Price)
		end
end
