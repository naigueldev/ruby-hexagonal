require "minitest/autorun"
require "./tests/test_helper"
require "./adapters/repositories/client/client_in_memory_repository"
require "./application/add_phone_to_client"
require "./application/remove_phone_from_client"
require "./application/create_client"
require "./application/dto/add_phone_to_client_dto"
require "./application/dto/remove_phone_from_client_dto"
require "./application/dto/create_client_dto"
require "./domain/client"
require "./domain/phone"

class RemovePhoneFromClientTest < Minitest::Test
  def test_execute
    client_in_memory_repository = ClientInMemoryRepository.new
    create_client = CreateClient.new(client_repository: client_in_memory_repository)

    create_client_dto = CreateClientDTO.new(id: 1, name: "Fake Client")
    create_client.execute(dto: create_client_dto)

    add_phone_to_client = AddPhoneToClient.new(
      client_repository: client_in_memory_repository,
    )

    add_phone_to_client_dto = AddPhoneToClientDTO.new(
      client_id: 1,
      phone_id: 1,
      phone_number: "0800",
    )

    add_phone_to_client.execute(dto: add_phone_to_client_dto)

    add_phone_to_client_dto = AddPhoneToClientDTO.new(
      client_id: 1,
      phone_id: 2,
      phone_number: "0800 12345",
    )

    add_phone_to_client.execute(dto: add_phone_to_client_dto)

    remove_phone_from_client = RemovePhoneFromClient.new(
      client_repository: client_in_memory_repository,
    )

    remove_phone_from_client_dto = RemovePhoneFromClientDTO.new(
      client_id: 1,
      phone_id: 1,
    )

    client = remove_phone_from_client.execute(dto: remove_phone_from_client_dto)

    assert_equal(1, client.phones.count)
  end
end
