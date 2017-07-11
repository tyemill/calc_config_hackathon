class TransportationsController < ApplicationController
  def show
    @Transportation.find_each(params[:cost])
  end

end
