require "minitest/autorun"
require "./tests/test_helper"
require "./domain/client"

class ClientTest < Minitest::Test
  def test_add_client
    client = Client.new(id: 1, name: "Fake Name")
    client.add_phone(phone: "55999887766")

    assert_equal(["55999887766"], client.phones)
  end
end
