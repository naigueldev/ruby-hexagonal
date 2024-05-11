class ClientInterface
  def add_phone(phone:)
    raise NotImplementedError, "Implement this method in a child class"
  end

  def remove_phone(phone_id:)
    raise NotImplementedError, "Implement this method in a child class"
  end
end
