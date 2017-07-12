class TripsController < ApplicationController
  def new
  end

  def show
    amount = params[:budget].to_i / 3
    dest = params[:start]

    set_transportation(amount, dest)
    set_hospitality(amount, dest)
    set_activities(amount, dest)
  end

  private 

  def set_transportation(amount, dest)
    @transportation = Transportation.where("cost <= '%s' and start = '%s'" , amount, dest)
  end
  
  def set_hospitality(amount, dest)
    @hospitality = Hospitality.where("cost <= '%s' and city = '%s'" , amount, dest)
  end
  
  def set_activities(amount, dest)
    @activities = Activities.where("cost <= '%s' and city = '%s'", amount, dest)
  end
end
