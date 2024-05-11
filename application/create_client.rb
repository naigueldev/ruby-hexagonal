require "./domain/client"

class CreateClient
  def initialize(client_repository:)
    @client_repository = client_repository
  end

  def execute(dto:)
    client = Client.new(id: dto.id, name: dto.name)
    @client_repository.save(client: client)
  end
end
