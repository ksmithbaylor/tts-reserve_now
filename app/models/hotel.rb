class Hotel < ActiveRecord::Base
  has_many :guest_hotel
end
