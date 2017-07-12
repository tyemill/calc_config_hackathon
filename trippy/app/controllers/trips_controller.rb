class TripsController < ApplicationController
  def new
  end

  def show
    amount = params[:budget].to_i
    dest = params[:city]
    start = params[:start]
    duration = params[:duration]
    
    set_cheap(amount, dest, start)
    amount = params[:budget].to_i
    set_expensive(amount, dest, start)
    amount = params[:budget].to_i
    set_random(amount, dest, start)
  end

  private

  def set_cheap(amount, dest, start)
    set_transportation(amount, dest, start)
    unless @transportion_cheap.nil? || @transportion_cheap[0].nil? 
      amount = amount - @transportation_cheap[0].cost 
    end
    set_hospitality(amount, dest)
    unless @hospilatity_cheap.nil? || @hospitality_cheap[0].nil? 
      amount = amount - @hospitality_cheap[0].cost
    end
    set_activities_cheap(amount, dest)
  end 

  def set_expensive(amount, dest, start)
    set_transportation_high(amount, dest, start)
    unless @transportation_high.nil? || @transportation_high[0].nil? 
      amount = amount - @transportation_high[0].cost
    end
    set_hospitality_high(amount, dest)
    unless @hospitality_high.nil? || @hospitality_high[0].nil? 
      amount = amount - @hospitality_high[0].cost
    end
    set_activities_high(amount, dest)
  end 
  
  def set_random(amount, dest, start)
    set_transportation_rand(amount, dest, start)
    unless @transportation_rand.nil? || @transportation_rand[0].nil? 
      amount = amount - @transportation_rand[0].cost
    end
    set_hospitality_rand(amount, dest)
    unless @hospitality_rand.nil? || @hospitality_rand[0].nil? 
      amount = amount - @hospitality_rand[0].cost
    end
    set_activities(amount, dest)
  end 


  def set_transportation(amount, dest, start)
    @transportation_cheap = Transportation.limit(1).order("cost").where("cost <= '%s' and dest = '%s' and start = '%s'" , amount, dest, start)
  end
  
  def set_hospitality(amount, dest)
    daily_cost = amount / params[:duration].to_i
    @hospitality_cheap = Hospitality.limit(1).order("cost").where("cost <= '%s' and city = '%s'" , daily_cost, dest)
  end
  
  def set_activities_cheap(amount, dest)
    @activities_cheap = Activities.limit(2 * params[:duration].to_i).order("cost").where("cost <= '%s' and city = '%s'", amount, dest)
  end
  
  def set_transportation_high(amount, dest, start)
    @transportation_high = Transportation.limit(1).order("cost DESC").where("cost <= '%s' and dest = '%s' and start = '%s'" , amount, dest, start)
  end
  
  def set_hospitality_high(amount, dest)
    daily_cost = amount / params[:duration].to_i
    @hospitality_high = Hospitality.limit(1).order("cost DESC").where("cost <= '%s' and city = '%s'" , daily_cost, dest)
  end
  
  def set_activities_high(amount, dest)
    @activities_high = Activities.limit(2 * params[:duration].to_i).order("cost DESC").where("cost <= '%s' and city = '%s'", amount, dest)
  end

  def set_transportation_rand(amount, dest, start)
    @transportation_rand = Transportation.limit(1).where("cost <= '%s' and dest = '%s' and start = '%s'" , amount, dest, start)
  end
  
  def set_hospitality_rand(amount, dest)
    daily_cost = amount / params[:duration].to_i
    @hospitality_rand = Hospitality.limit(1).where("cost <= '%s' and city = '%s'" , daily_cost, dest)
  end
  
  def set_activities(amount, dest)
    total = 0
    @activities_rand = Array.new
    Activities.limit(2 * params[:duration].to_i).where("cost <= '%s' and city = '%s'", amount, dest).each do |act| 
      break if ((total += act.cost) > amount)
      total += act.cost
      @activities_rand << act
    end
  end
  
end
