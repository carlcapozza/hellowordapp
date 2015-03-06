class GreetingsController < ApplicationController
  before_action :get_greeting, only: [:show, :destroy, :edit, :update]

  def get_greeting
    @greeting = Greetings.find(params[:id])
  end

  def return_to_index
    redirect_to :action => 'index', :format => 'html'
  end 


	def show

  end

  def index
  	@greeting = Greetings.all
  end

  def edit

  end

  def update
    @greeting.update!(params[:greetings].permit(:greeting))
    @greeting.save
    return_to_index
  end


  def new
    @greeting = Greetings.new
  end

  def create
    @greeting = Greetings.new(params[:greetings])
    if @greeting.save
      render 'new'
    end
  end


  def destroy
    @greeting.destroy
    return_to_index
  end

end