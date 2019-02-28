class Dress < ApplicationRecord
    has_many :clients, through: :bookings
    has_many :bookings, inverse_of: :dresses
    accepts_nested_attributes_for :bookings
    belongs_to :owner

    mount_uploader :cover, DressUploader
end
