class English < CrewMember
  def initialize
    super('English')
  end

  def receive_order(order)
    if order.include? "traditional"
      jump
    else
      super(order)
    end
  end
end
