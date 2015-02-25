class GreetingsController < ApplicationController
  before_action :get_greeting, only: [:show, :destroy]

  def get_greeting
    @greeting = Greetings.find(params[:id])
  end


	def show
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
    @greeting = Greetings.find(params[:id])
  end

  def update
    g = Greetings.find(params[:id])
    g.update(params[:greeting])
    g.save
  end


  def create

  end

  def destroy
    @greeting.destroy
    redirect_to :action => 'index', :format => 'html'
  end

end
