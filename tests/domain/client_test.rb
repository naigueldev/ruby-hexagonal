require "minitest/autorun"
require "./tests/test_helper"
require "./domain/client"
require "./domain/phone"

class ClientTest < Minitest::Test
  def test_add_phone
    expected_phone_number = "55999887766"
    client = Client.new(id: 1, name: "Fake Name")
    phone = Phone.new(id: 1, phone_number: expected_phone_number)
    client.add_phone(phone: phone)

    assert_equal(expected_phone_number, client.phones[0].phone_number)
  end

  def skip_test_remove_phone
    client = Client.new(id: 1, name: "Fake Name")
    client.add_phone(phone: "55999887766")

    client = Client.new(id: 2, name: "Fake Name Two")
    client.add_phone(phone: "55991827364")

    client.remove_phone(phone_id: 1)

    assert_equal(["55991827364"], client.phones)
  end
end
