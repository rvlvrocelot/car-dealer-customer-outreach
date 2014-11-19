class CarsController < ApplicationController

	def index
		@cars = Car.all
	end

	def new
	end

	def show
		@car = Car.find(params[:id])
	end

	def create
		@car = Car.new(car_params)
		uploaded_io = params[:car][:picture]
		name =  uploaded_io.original_filename.delete(" ")
		@car.pictureName = name
		File.open(Rails.root.join('public', 'uploads', name), 'wb') do |file|
		 	file.write(uploaded_io.read)
		end

		@car.save
		redirect_to @car
	end

	private
		def car_params
			params.require(:car).permit(:carMake,:carModel,:carTrim,:carYear,:carMileage,:carColor,:carState,:carPrice,:pictureName)
		end
end
