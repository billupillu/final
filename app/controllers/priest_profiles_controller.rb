class PriestProfilesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_priest_profile, only: [:show, :edit, :update, :destroy]
  before_action :set_areaids, only: [:create]
  def update_cities
    @areas = Area.where("city_id = ?", params[:city_id])

      respond_to do |format|
        format.js
      end

  end 
  # GET /priest_profiles
  # GET /priest_profiles.json
  def index
    @priest_profiles = PriestProfile.all
  end

  # GET /priest_profiles/1
  # GET /priest_profiles/1.json
  def show
     @listOfCities= City.all
  end

  # GET /priest_profiles/new
  def new
    @priest_profile = PriestProfile.new
    @cities         = City.all.order(:name)
    @areas          = @cities.first.areas.order(:name)
  end

  # GET /priest_profiles/1/edit
  def edit
  end

  # POST /priest_profiles
  # POST /priest_profiles.json
 
  def create
    @priest_profile = PriestProfile.new(priest_profile_params)

    respond_to do |format|
      if @priest_profile.save
        @priest_profile.areas <<  @areaids
    
        format.html { redirect_to @priest_profile, notice: 'Priest profile was successfully created.' }
        format.json { render :show, status: :created, location: @priest_profile }
      else
        format.html { render :new }
        format.json { render json: @priest_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /priest_profiles/1
  # PATCH/PUT /priest_profiles/1.json
  def update
    respond_to do |format|
      if @priest_profile.update(priest_profile_params)
        format.html { redirect_to @priest_profile, notice: 'Priest profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @priest_profile }
      else
        format.html { render :edit }
        format.json { render json: @priest_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /priest_profiles/1
  # DELETE /priest_profiles/1.json
  def destroy
    @priest_profile.destroy
    respond_to do |format|
      format.html { redirect_to priest_profiles_url, notice: 'Priest profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_priest_profile
      @priest_profile = PriestProfile.find(params[:id])
    end

    def set_areaids
      @areaids = Area.find(params[:priest_profile][:area_ids])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def priest_profile_params
      params.require(:priest_profile).permit(:name, :phone_wrk, :phone_pr, :religion, :icon, :brief, :description, :area_ids, :area_id, :city_id)
    end
end
