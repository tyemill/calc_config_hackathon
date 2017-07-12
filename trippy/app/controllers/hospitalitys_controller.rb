class HospitalitysController < ApplicationController
  def index
    @hospitalitys = hospitalitys.all
  end
end
