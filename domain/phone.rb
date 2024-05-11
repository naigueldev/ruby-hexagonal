require_relative "./interfaces/phone_interface"

class Phone < PhoneInterface
  attr_accessor :id, :phone_number

  def initialize(id:, phone_number:)
    @id = id
    @phone_number = phone_number
  end
end
