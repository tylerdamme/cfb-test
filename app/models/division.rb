class Division < ApplicationRecord

  belongs_to :conferences
  has_many :teams

end
