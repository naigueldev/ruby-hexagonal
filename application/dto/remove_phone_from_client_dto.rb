class RemovePhoneFromClientDTO
  attr_accessor :client_id, :phone_id

  def initialize(client_id:, phone_id:)
    @client_id = client_id
    @phone_id = phone_id
  end
end
