module TimeAdder
  require 'json'
  require 'date'

  json = $stdin.read

  times = JSON.parse(json)

  grouped_times = times.group_by { |time| time.fetch("note") }

  grouped_times.each do |category, members|

    reduced_times = members.map do |member|
      DateTime.parse(member.fetch("end")).to_time - DateTime.parse(member.fetch("start")).to_time
    end.reduce(:+)

    puts "#{category}: #{(reduced_times/3600).round(2)}"

  end
end
