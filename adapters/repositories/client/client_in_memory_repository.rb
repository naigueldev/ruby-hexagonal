require "./adapters/interfaces/client_repository_interface"

class ClientInMemoryRepository < ClientRepositoryInterface
  def initialize
    @clients = Array.new
  end

  def findById(id:)
    client = @clients.select { |client| client.id == id }
    client.first
  end

  def save(client:)
    @clients.push(client)
  end
end
