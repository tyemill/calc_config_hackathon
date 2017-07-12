class TripsController < ApplicationController
  def new
  end

  def show
    amount = params[:budget].to_i
    dest = params[:city]
    
    set_cheap(amount, dest)
    amount = params[:budget].to_i
    set_expensive(amount, dest)
    amount = params[:budget].to_i
    set_random(amount, dest)
  end

  private

  def set_cheap(amount, dest)
    set_transportation(amount, dest)
    unless @transportion_cheap.nil?
      amount = amount - @transportation_cheap[0].cost 
    end
    set_hospitality(amount, dest)
    unless @hospilatity_cheap.nil? 
      amount = amount - @hospitality_cheap[0].cos
    end
    set_activities_cheap(amount, dest)
  end 

  def set_expensive(amount, dest)
    set_transportation_high(amount, dest)
    unless @transportation_high.nil? 
      amount = amount - @transportation_high[0].cost
    end
    set_hospitality_high(amount, dest)
    unless @hospitality.nil? 
      amount = amount - @hospitality_high[0].cost
    end
    set_activities_high(amount, dest)
  end 
  
  def set_random(amount, dest)
    set_transportation_rand(amount, dest)
    unless @transportation_rand.nil? 
      amount = amount - @transportation_rand[0].cost
    end
    set_hospitality_rand(amount, dest)
    unless @hospitality_rand.nil? 
      amount = amount - @hospitality_rand[0].cost
    end
    set_activities(amount, dest)
  end 


  def set_transportation(amount, dest)
    @transportation_cheap = Transportation.limit(1).order("cost").where("cost <= '%s' and dest = '%s'" , amount, dest)
  end
  
  def set_hospitality(amount, dest)
    daily_cost = amount / params[:duration].to_i
    @hospitality_cheap = Hospitality.limit(1).order("cost").where("cost <= '%s' and city = '%s'" , daily_cost, dest)
  end
  
  def set_activities_cheap(amount, dest)
    @activities_cheap = Activities.limit(2 * params[:duration].to_i).order("cost").where("cost <= '%s' and city = '%s'", amount, dest)
  end
  
  def set_transportation_high(amount, dest)
    @transportation_high = Transportation.limit(1).order("cost DESC").where("cost <= '%s' and dest = '%s'" , amount, dest)
  end
  
  def set_hospitality_high(amount, dest)
    daily_cost = amount / params[:duration].to_i
    @hospitality_high = Hospitality.limit(1).order("cost DESC").where("cost <= '%s' and city = '%s'" , daily_cost, dest)
  end
  
  def set_activities_high(amount, dest)
    @activities_high = Activities.limit(2 * params[:duration].to_i).order("cost DESC").where("cost <= '%s' and city = '%s'", amount, dest)
  end

  def set_transportation_rand(amount, dest)
    @transportation_rand = Transportation.limit(1).where("cost <= '%s' and dest = '%s'" , amount, dest)
  end
  
  def set_hospitality_rand(amount, dest)
    daily_cost = amount / params[:duration].to_i
    @hospitality_rand = Hospitality.limit(1).where("cost <= '%s' and city = '%s'" , daily_cost, dest)
  end
  
  def set_activities(amount, dest)
    @activities_rand = Activities.limit(2 * params[:duration].to_i).where("cost <= '%s' and city = '%s'", amount, dest)
  end
  
end
