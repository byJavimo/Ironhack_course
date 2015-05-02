class ConcertsController < ApplicationController
	 def index
      @FechaActual = Date.current.year.to_s + "-" + format("%02d",Date.current.month).to_s + "-"+ format("%02d",Date.current.day).to_s;
      @concerts = Concert.select("id, band_name, venue, city, date, price, description").where(:date => @FechaActual);
      #@concerts = Concert.all
      @DiaSiguiente = Date.current.year.to_s + "-" + format("%02d",Date.current.month).to_s + "-" + format("%02d",(Date.current.day+1)  ).to_s;
      @DiaFinalMes = Date.current.year.to_s + "-" +  Date.current.month.to_s + "-31";
      @concertsRestantesMes = Concert.select("id, band_name, venue, city, date, price, description").where(date: @DiaSiguiente .. @DiaFinalMes)
    end
    def show
        @concert = Concert.find(params[:id])
    end

    def new
   		@concert = Concert.new
  	end

    def create
     	@concert = Concert.new(concert_params)
     	@concert.save
     	redirect_to concert_path(@concert)
  	end

    def destroy
      @concert = Concert.find(params[:id])
      @concert.destroy

      redirect_to root_path
    end

    def like
      
    end

 private
     def concert_params
          params.require(:concert).permit(:band_name, :venue, :city, :date, :price, :description)
     end

end
