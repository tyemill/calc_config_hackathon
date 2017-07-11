class WelcomeController < ApplicationController
  @cash_supply = 5000
  def show
    puts get_available_transport
    puts "hello"
  end

  private
  
  def get_available_transport
    Transport.find_each(:cost < @cash_supply)
  end

end
