require 'test_helper'

class GuestHotelsControllerTest < ActionController::TestCase
  setup do
    @guest_hotel = guest_hotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guest_hotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guest_hotel" do
    assert_difference('GuestHotel.count') do
      post :create, guest_hotel: { checkin_date: @guest_hotel.checkin_date, checkout_date: @guest_hotel.checkout_date, guest_id: @guest_hotel.guest_id, hotel_id: @guest_hotel.hotel_id, nights: @guest_hotel.nights }
    end

    assert_redirected_to guest_hotel_path(assigns(:guest_hotel))
  end

  test "should show guest_hotel" do
    get :show, id: @guest_hotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guest_hotel
    assert_response :success
  end

  test "should update guest_hotel" do
    patch :update, id: @guest_hotel, guest_hotel: { checkin_date: @guest_hotel.checkin_date, checkout_date: @guest_hotel.checkout_date, guest_id: @guest_hotel.guest_id, hotel_id: @guest_hotel.hotel_id, nights: @guest_hotel.nights }
    assert_redirected_to guest_hotel_path(assigns(:guest_hotel))
  end

  test "should destroy guest_hotel" do
    assert_difference('GuestHotel.count', -1) do
      delete :destroy, id: @guest_hotel
    end

    assert_redirected_to guest_hotels_path
  end
end
