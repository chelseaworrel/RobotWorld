class Robot
  attr_reader :name,
              :city,
              :state,
              :id,
              :birthday,
              :date_hired,
              :department


  def initialize(demographics)
    @id         = demographics["id"]
    @name       = demographics["name"]        #|| Faker::App.name
    @city       = demographics["city"]        #|| Faker::Address.city
    @state      = demographics["state"]       #|| Faker::Address.state
    @birthday   = demographics["birthday"]    #|| Faker::Date.backward(10000)
    @date_hired = demographics["date_hired"]  #|| Faker::Date.backward(10000)
    @department = demographics["department"]  #|| Faker::Commerce.department
  end
end
