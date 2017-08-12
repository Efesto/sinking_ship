class Italian < CrewMember
  def initialize
    super('Italian')
  end

  def receive_order(order)
    if order.include? "forbidden"
      jump
    else
      super(order)
    end
  end
end
