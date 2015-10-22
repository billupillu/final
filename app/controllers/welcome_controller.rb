class WelcomeController < ApplicationController
  def index
  	@list_of_cities = City.all
  end

  def getarea
 	lists = City.where(name: params['name'].to_s)

  	lists.each do |list|
  		@areaz = Area.cityareas(list.id);
 	  end

    respond_to do |format|
      format.js
    end 
  end

  def live_search

    @tasks = City.citysearch(params[:name].to_s.capitalize)

    render :layout => false
  end

  def search
    area = params[:area]
    religion = params[:religion]
    area = Area.where(name: area).first
    areas = PriestAreaship.where(area_id: area.id)
    x=%w{}
    areas.each do |b|
      x.unshift(b.priest_profile_id)
    end
    @priests = PriestProfile.where(id: x, religion: religion).order("created_at DESC")  
  end

end
