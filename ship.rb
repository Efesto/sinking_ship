
class Ship
  attr_reader :crew, :captain

  def initialize(captain, crew)
    @observers = []
    @captain = captain
    @crew = crew

    add_observer(captain)
    crew.each { |member| captain.add_observer(member) }
  end

  def add_observer(observer)
    @observers << observer
  end

  def start_sinking
    @observers.each do |observer|
      observer.send_event(:start_sinking)
    end
  end
end
