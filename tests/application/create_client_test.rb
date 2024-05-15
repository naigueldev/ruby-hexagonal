require "minitest/autorun"
require "./tests/test_helper"
require "./adapters/repositories/client/client_in_memory_repository"
require "./application/create_client"
require "./application/dto/create_client_dto"

class CreateClientTest < Minitest::Test
  def test_execute
    client_in_memory_repository = ClientInMemoryRepository.new
    create_client = CreateClient.new(client_repository: client_in_memory_repository)
    create_client_dto = CreateClientDTO.new(id: 1, name: "Fake Client")
    create_client.execute(dto: create_client_dto)
    client = client_in_memory_repository.findById(id: 1)

    assert_equal(client.name, "Fake Client")
  end
end
