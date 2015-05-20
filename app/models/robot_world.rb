require 'yaml/store'

class RobotWorld
  def self.create(robot)
    database.transaction do
      database['robots'] ||= []
      database['total'] ||= 0
      database['total'] += 1
      database['robots'] << { "id" => database['total'], "name" => robot[:name], "city" => robot[:city], "state" => robot[:state], "birthday" => robot[:birthday], "date_hired" => robot[:date_hired], "department" => robot[:department] }
    end
  end

  def self.database
    @database ||= YAML::Store.new("db/robot_world")
  end

  def self.raw_robots
    database.transaction do
      database['robots'] || []
    end
  end

  def self.all
    raw_robots.map { |robot| Robot.new(robot) }
  end

  def self.raw_robot(id)
    raw_robots.find { |robot| robot["id"] == id }
  end

  def self.find(id)
    Robot.new(raw_robot(id))
  end

  def self.update(id, demographics)
    database.transaction do
      target = database['robots'].find { |robot| robot["id"] == id }
      target["name"]       = demographics[:name]
      target["city"]       = demographics[:city]
      target["state"]      = demographics[:state]
      target["birthday"]   = demographics[:birthday]
      target["date_hired"] = demographics[:date_hired]
      targe["department"]  = demographics[:department]
    end
  end

  def self.delete(id)
    database.transaction do
      database['robots'].delete_if { |robot| robot ["id"] == id }
    end
  end
end
