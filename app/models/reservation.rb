class Reservation < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant
	
	# before_create :validate_reservation

 #  	def validate_reservation
 #   	 reservation_time = reservation.reservation_time.to_s
 #   	 reserved_seats = Restarants.find[:id].reservations
 # 	end

	# before_create :check_availability
  
 # 	private

 #  	def check_availability
 #    	reservations = Restaurant.find(restaurant_id).reservations.where('reservation_time', reservation_time.to_s)
 #    	total_bookings = reservations.inject(0) { |sum, reservation| sum + reservation.party_size }
 #    	if (Restaurant.find(restaurant_id).max_seats - total_bookings) < party_size
 #      		redirect_to restaurant_path(restaurant_id), :notice => "Sorry, but there are not enough seats available for your booking"
 #    	end
 # 	end
end
