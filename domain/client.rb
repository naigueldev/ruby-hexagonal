require "./domain/interfaces/client_interface"

class Client < ClientInterface
  attr_accessor :id, :name, :phones

  def initialize(id:, name:)
    @id = id
    @name = name
    @phones = Array.new()
  end

  def add_phone(phone:)
    @phones.push(phone)
  end

  def remove_phone(phone_id:)
    @phones = @phones.select { |phone| phone.id != phone_id }
  end
end
