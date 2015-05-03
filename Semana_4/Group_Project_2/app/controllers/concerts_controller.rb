class ConcertsController < ApplicationController
	 def index
      @FechaActual = Date.current.year.to_s + "-" + format("%02d",Date.current.month).to_s + "-"+ format("%02d",Date.current.day).to_s;
      @concerts = Concert.select("id, band_name, venue, city, date, price, description").where(:date => @FechaActual);
      #@concerts = Concert.all
      @DiaSiguiente = Date.current.year.to_s + "-" + format("%02d",Date.current.month).to_s + "-" + format("%02d",(Date.current.day+1)  ).to_s;
      @DiaFinalMes = Date.current.year.to_s + "-" +  Date.current.month.to_s + "-31";
      @concertsRestantesMes = Concert.select("id, band_name, venue, city, date, price, description").where(date: @DiaSiguiente .. @DiaFinalMes)
      @concertsLikes = Concert.select("id, band_name, venue, city, date, price, description, likes").order("likes DESC").limit(10)    
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

    def like
      @concert = Concert.find(params[:id])
      @concert.likes = @concert.likes + 1;
      @concert.save
  
      @concert = Concert.find(params[:id])
      render :show 
    end


    def top
       @concert = Concert.order(:likes)
    end

 private
     def concert_params
          params.require(:concert).permit(:band_name, :venue, :city, :date, :price, :description)
     end

end