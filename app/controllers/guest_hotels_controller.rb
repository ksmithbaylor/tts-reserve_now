class GuestHotelsController < ApplicationController
  before_action :set_guest_hotel, only: [:show, :edit, :update, :destroy]

  # GET /guest_hotels
  # GET /guest_hotels.json
  def index
    @guest_hotels = GuestHotel.all
  end

  # GET /guest_hotels/1
  # GET /guest_hotels/1.json
  def show
  end

  # GET /guest_hotels/new
  def new
    @guest_hotel = GuestHotel.new
  end

  # GET /guest_hotels/1/edit
  def edit
  end

  # POST /guest_hotels
  # POST /guest_hotels.json
  def create
    @guest_hotel = GuestHotel.new(guest_hotel_params)

    respond_to do |format|
      if @guest_hotel.save
        format.html { redirect_to @guest_hotel, notice: 'Guest hotel was successfully created.' }
        format.json { render :show, status: :created, location: @guest_hotel }
      else
        format.html { render :new }
        format.json { render json: @guest_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guest_hotels/1
  # PATCH/PUT /guest_hotels/1.json
  def update
    respond_to do |format|
      if @guest_hotel.update(guest_hotel_params)
        format.html { redirect_to @guest_hotel, notice: 'Guest hotel was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest_hotel }
      else
        format.html { render :edit }
        format.json { render json: @guest_hotel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_hotels/1
  # DELETE /guest_hotels/1.json
  def destroy
    @guest_hotel.destroy
    respond_to do |format|
      format.html { redirect_to guest_hotels_url, notice: 'Guest hotel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_hotel
      @guest_hotel = GuestHotel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_hotel_params
      params.require(:guest_hotel).permit(:guest_id, :hotel_id, :nights, :checkin_date, :checkout_date)
    end
end
