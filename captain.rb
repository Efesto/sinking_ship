class Captain
  def initialize
    @observers = []
  end

  def give_order(what_to_say)
    say what_to_say
    @observers.each { |observer| observer.receive_order(what_to_say) }
  end

  def add_observer(observer)
    @observers << observer
  end

  def send_event(event)
    if event == :start_sinking
      give_order('You have to leave the ship!!')
    end
  end

  def say(message)
    puts "\e[1mCaptain\e[0m ==> \e[33m#{message}\e[0m"
  end
end
