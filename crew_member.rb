class CrewMember
  attr_reader :country

  def initialize(country)
    @country = country
    @on_the_ship = true
  end

  def receive_order(_order)
    say "\e[31mThe water is cold!\e[0m" if @on_the_ship
    nil
  end

  def jump
    if @on_the_ship
      say "\e[32mJumping!!\e[0m"
      @on_the_ship = false
    end

    nil
  end

  def say(message)
    puts "\e[1m#{@country}\e[0m: #{message}"
  end
end
