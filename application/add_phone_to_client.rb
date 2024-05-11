require "./domain/phone"

class AddPhoneToClient
  def initialize(client_repository:)
    @client_repository = client_repository
  end

  def execute(dto:)
    client = @client_repository.findById(id: dto.client_id)

    client.add_phone(phone: Phone.new(id: 1, phone_number: dto.phone_number))

    @client_repository.save(client: client)

    client
  end
end
