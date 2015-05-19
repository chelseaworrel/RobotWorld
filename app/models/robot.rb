class Robot
  attr_reader :name,
              :city,
              :state,
              :id,
              :birthday,
              :date_hired,
              :department


  def initialize(demographics)
    @state      = demographics["state"]
    @name       = demographics["name"]
    @city       = demographics["city"]
    @id         = demographics["id"]
    @birthday   = demographics["birthday"]
    @date_hired = demographics["date_hired"]
    @department = demographics["department"]
  end
end
