class PhonesController < ApplicationController
    def index
        @phones = Phone.all
    end
    def new
        @phone = Phone.new
    end
    def edit
        @phone = Phone.find(params[:id])
    end
    def create
        @phone = Phone.new

        @phone.name = params[:phone][:name]
        @phone.brand = params[:phone][:brand]
        @phone.year_released = params[:phone][:year_released]
        @phone.camera = params[:phone][:camera]
        @phone.mpixels = params[:phone][:mpixels]
        @phone.internal_storage = params[:phone][:internal_storage]
        @phone.sim_slot = params[:phone][:sim_slot]
        @phone.size = params[:phone][:size]
        @phone.operating_system = params[:phone][:operating_system]
        @phone.stock = params[:phone][:stock]

        @phone.save
        redirect_to "/phones/"
    end
    def show
        @phone = Phone.find(params[:id])
    end
end
