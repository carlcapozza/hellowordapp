class PagesController < ApplicationController
  def home
    @greeting = "Home action says: Hello world!"
    @g = Greetings.find_by(greeting: 'Hello World')
  end
end
