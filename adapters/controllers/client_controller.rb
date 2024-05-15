class ClientController < BaseController
  def initialize(client_repository:)
    @client_repository = client_repository
  end

  def create
    create_client = CreateClient.new(@client_repository)

    create_client_dto = CreateClientDTO.new(id: params[:id], name: params[:name])
    client = create_client.execute(dto: create_client_dto)

    response(status: 200, body: client.json)
  rescue e
    response(status: 400, body: e.message)
  end
end
