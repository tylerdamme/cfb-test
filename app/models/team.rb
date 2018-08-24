class Team < ApplicationRecord

  belongs_to :conferences
  belongs_to :divisions

end
