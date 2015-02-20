class PagesController < ApplicationController
  def home
    @greeting = "Home action says: Hello world!"
    @g = Greetings.find_by(greeting: 'Hello World')
  end
  def show
  	@g = Greetings.find_by_id(params[:id])
  	respond_to do |format|
  		format.html
  		format.json { render json: @g }
  	end
  end
end
