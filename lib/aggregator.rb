class Aggregator

  require 'json'
  require 'date'
  require_relative 'activity'

  attr_reader :activities

  def initialize
    json = JSON.parse($stdin.read)
    @activities = json.map do |json_object|
      Activity.new(json_object)
    end
  end

  def by_note
    activities.group_by(&:note)
  end

  def by_day
    # TODO …
  end
end
