require 'net/http'
require 'json'

class ParksController < ApplicationController
  before_action :set_park, only: %i[ show edit update destroy ]

  PARKS = %w[acad arch badl bibe bisc blca brca cany care CAVE chis cong crla cuva DEVA dena drto ever gaar glba glac grca grte grba grsa grsm gumo hale hosp indu isro jeff jotr katm KEFJ seki kova lacl lavo maca meve mora neri npsa noca olym pefo pinn redw romo sagu shen thro viis voya whsa wica wrst yell yose zion]
  API_KEY = "EfU5J6OQ7ZBnBDRDHmPId0ex5vPcPF2ECw9JJY88"

  # GET /parks or /parks.json
  def index
    # raw_url = "https://developer.nps.gov/api/v1/parks?parkCode=#{PARKS.join(",")}&api_key=#{API_KEY}&limit=#{PARKS.size}"
    # url = URI.parse(raw_url)
    # req = Net::HTTP::Get.new(url.to_s)
    # res = Net::HTTP.start(url.host, url.port) do |http|
    #   http.request(req)
    # end
    # puts res.body

    @parks = Park.all

  end

  # GET /parks/1 or /parks/1.json
  def show
  end

  # GET /parks/new
  def new
    @park = Park.new
  end

  # GET /parks/1/edit
  def edit
  end

  # POST /parks or /parks.json
  def create
    @park = Park.new(park_params)

    respond_to do |format|
      if @park.save
        format.html { redirect_to @park, notice: "Park was successfully created." }
        format.json { render :show, status: :created, location: @park }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @park.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parks/1 or /parks/1.json
  def update
    respond_to do |format|
      if @park.update(park_params)
        format.html { redirect_to @park, notice: "Park was successfully updated." }
        format.json { render :show, status: :ok, location: @park }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @park.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parks/1 or /parks/1.json
  def destroy
    @park.destroy
    respond_to do |format|
      format.html { redirect_to parks_url, notice: "Park was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park
      @park = Park.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def park_params
      params.require(:park).permit(:name, :park_code, :description, :url, :latitude, :longitude, :state, :email, :phone, :fax, :directions, :directions_url, :weather)
    end
end
