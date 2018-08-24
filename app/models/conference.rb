class Conference < ApplicationRecord

  has_many :divisions
  has_many :teams

  def as_json
    {
      id: id,
      conference_name: conference_name,
      divisions: divisions,
      teams: teams.order(division_id: :asc, team_name: :asc).as_json
    }
  end

end
