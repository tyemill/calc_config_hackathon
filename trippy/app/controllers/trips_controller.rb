class TripsController < ApplicationController
  def new
  end

  def show
    amount = params[:budget].to_i / 3
    dest = params[:city]

    set_transportation(amount, dest)
    set_hospitality(amount)
    set_activities(amount)

  end

  private 

  def set_transportation(amount, dest)
    @transportation = Transportation.where(["cost <= :cost and end = :end", { cost: amount, end: dest }])
  end
  
  def set_hospitality(amount)
    @hospitality = Transportation.where("cost <= ?", amount)
  end
  
  def set_activities(amount)
    @activity = Transportation.where("cost <= ?", amount)
  end
end
