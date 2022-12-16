class Booking < ApplicationRecord
  belongs_to :listing

  after_create_commit :create_first_checkin, :create_last_checkout_mission

  private

  def create_first_checkin
    # binding.irb
    listing.missions.create!(
      listing_id: listing.id,
      mission_type: :first_chekin,
      date: start_date,
      price: 10 * listing.num_rooms
    )
  end
end
