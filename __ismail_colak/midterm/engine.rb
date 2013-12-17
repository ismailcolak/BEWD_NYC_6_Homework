
require 'json'
require 'rest-client'

class Engine

attr_accessor :choice, :number, :salaries
  
  def initialize
    @choice = choice
    @number = number
    @salaries = []
  end

  def get_input
    @number = Integer(gets) rescue false
  end


  def test_input
    if [1,2,3,4].include? @number
    return true
    else false
    end 
  end

  def display_salaries
  	salaries.join("\n")
  end


def get_from_salaries
if number == 1
  @choice = "mlb"
elsif number == 2
  @choice = "nfl"
elsif number == 3
  @choice = "nba"
else
  @choice = "nhl"
end

response = RestClient.get("http://api.usatoday.com/open/salaries/#{@choice}?players=&top=5&encoding=json&api_key=br23mwrgg3vbu3kwacfk3f8t")
parsed_salaries = JSON.parse(response)
parsed_salaries["salaries"][0]["salary"].each do |salary|
	player_name = salary["player"]
	player_position = salary["position_desc"]
	player_team = salary["team"]
	player_salary=salary["salary"]

	@salaries << Salary.new({player: player_name, position: player_position, team: player_team, salary: player_salary})
end
end

end

