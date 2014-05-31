class Activity

  attr_reader :start, :finish, :note

  def initialize(values)
    @start  = DateTime.parse(values.fetch("start")).to_time
    @finish = DateTime.parse(values.fetch("end")).to_time
    @note   = values.fetch("note")
  end

  def length
    finish - start
  end
end
