class German < CrewMember
  def initialize
    super('German')
  end

  def receive_order(order)
    if order.include? "order"
      jump
    else
      super(order)
    end
  end
end
