require_relative 'captain.rb'
require_relative 'crew_member.rb'
require_relative 'italian.rb'
require_relative 'german.rb'
require_relative 'english.rb'
require_relative 'ship.rb'

@captain = Captain.new
@ship = Ship.new(@captain, [English.new, German.new, Italian.new])

