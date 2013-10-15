class Church < ActiveRecord::Base
has_many :events, dependent: :destroy

validates :name, presence: true, length: {minimum:5}
validates :location, presence: true, length: {minimum:10}

end
