require 'net/http'
require 'json'

class ParksController < ApplicationController
  before_action :set_park, only: %i[ show edit update destroy ]

  PARKS = %w[acad arch badl bibe bisc blca brca cany care CAVE chis cong crla cuva DEVA dena drto ever gaar glba glac grca grte grba grsa grsm gumo hale hosp indu isro jeff jotr katm KEFJ seki kova lacl lavo maca meve mora neri npsa noca olym pefo pinn redw romo sagu shen thro viis voya whsa wica wrst yell yose zion]
  API_KEY = "EfU5J6OQ7ZBnBDRDHmPId0ex5vPcPF2ECw9JJY88"

  # GET /parks or /parks.json
  def index
    raw_url = "https://developer.nps.gov/api/v1/parks?parkCode=#{PARKS.join(",")}&api_key=#{API_KEY}&limit=#{PARKS.size}"
    uri = URI.parse(raw_url)
    response = Net::HTTP.get_response(uri)

    if response.code == "200"
      puts "SUCCESS RESPONSE"
      result = JSON.parse(response.body)

      result["data"].each do |doc|
        park = Park.new
        park.name = doc["fullName"]
        park.park_code = doc["parkCode"]
        park.description = doc["description"]
        park.url = doc["url"]
        park.latitude = doc["latitude"].to_f
        park.longitude = doc["longitude"].to_f
        park.state = doc["states"]
        park.email = doc["contacts"]["emailAddresses"]&[0]&["emailAddress"]
        park.phone = doc["contacts"]["phoneNumbers"].find { |number| number["type"] == "Voice" }
        park.fax = doc["contacts"]["phoneNumbers"].find { |number| number["type"] == "Voice" }
        park.directions = doc["directionsInfo"]
        park.directions_url = doc["directionsUrl"]
        park.weather = doc["weatherInfo"]

        park.save!

        doc["entranceFees"].each do |fee|
          new_fee = Fee.new

          new_fee.title = fee["title"]
          new_fee.description = fee["description"]
          new_fee.cost = fee["cost"]

          new_fee.park_id = park.id

          new_fee.save!
        end

        doc["addresses"].each do |address|
          new_address = Address.new

          new_address.type = address["type"]
          new_address.line_1 = address["line1"]
          new_address.line_2 = address["line2"]
          new_address.city = address["city"]
          new_address.state = address["state"]
          new_address.postal_code = address["postalCode"]

          new_address.park_id = park.id

          new_address.save!
        end

        doc["images"].each do |image|
          new_image = Image.new

          new_image.title = image["title"]
          new_image.caption = image["caption"]
          new_image.alt_text = image["altText"]
          new_image.credit = image["credit"]
          new_image.url = image["url"]

          new_image.park_id = park.id

          new_image.save!
        end
      end
    else
      puts 'BAD RESPONSE'
      pp response
    end

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
