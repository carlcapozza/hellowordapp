class GreetingsController < ApplicationController

	def show
  	@greeting = Greetings.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @greeting }
    end
  end

  def index
  	@greeting = Greetings.all
  	respond_to do |format|
  		format.html
      format.json { render json: @greeting }
  	end
  end

  def edit
  
  end

  def create

  end

  def update

  end

  def destroy

  end

end
