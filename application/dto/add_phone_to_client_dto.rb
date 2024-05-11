class AddPhoneToClientDTO
  attr_accessor :client_id, :phone_id, :phone_number

  def initialize(client_id:, phone_id:, phone_number:)
    @client_id = client_id
    @phone_id = phone_id
    @phone_number = phone_number
  end
end
