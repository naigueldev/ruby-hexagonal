class RemovePhoneFromClient
  def initialize(client_repository:)
    @client_repository = client_repository
  end

  def execute(dto:)
    client = @client_repository.findById(id: dto.client_id)

    client.remove_phone(phone_id: dto.phone_id)

    @client_repository.save(client: client)

    client
  end
end
